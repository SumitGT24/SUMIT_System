<?php
require_once ("Secure_area.php");
class Config extends Secure_area 
{
	public $log_text = '';

	function _log($msg)
	{
		$msg = date(get_date_format().' h:i:s ').': '.$msg."\n"; 
		if (is_cli())
		{
			echo $msg;
		}
		$this->log_text.=$msg;
	}

	function _save_log()
	{
		$CI =& get_instance();	
		$CI->load->model("Appfile");
		$this->Appfile->save('quickbooks_log.txt',$this->log_text,'+72 hours');
	}

	function __construct()
	{
		parent::__construct('config');
		$this->lang->load('config');
		$this->lang->load('module');	
		$this->load->model('Appfile');	
		$this->load->model('Sale');	
	}
	
	function customer_search()
	{
		$this->load->model('Customer');
		//allow parallel searchs to improve performance.
		session_write_close();
		$suggestions = $this->Customer->get_customer_search_suggestions($this->input->get('term'),0,100);
				echo json_encode($suggestions);
	}	
	
	function index()
	{
		$this->load->model('Tier');
		$this->load->model('Zip');
		$this->load->model('Shipping_zone');
		$this->load->model('Shipping_provider');
		$this->load->model('Shipping_method');
		$this->load->model('Location');
		$this->load->model('Item');
		$this->load->model('Category');
		$this->load->model('Customer');
		$this->lang->load('sales');
		$locations_result=$this->Location->get_all();
		$locations=$locations_result->result_array();
		$tiers_result=$this->Tier->get_all();
		$tiers=$tiers_result->result_array();
		
		$locations_dropdown=array();
		
		foreach($locations as $location){
			$locations_dropdown[$location['location_id']]=$location['name'];
		}
		
		$tiers_dropdown=array(""=>lang('common_none'));
		
		foreach($tiers as $tier){
			$tiers_dropdown[$tier['id']]=$tier['name'];
		}

		// Code to get chart of accounts ends
		
		$data['store_locations']=$locations_dropdown;
		$data['online_price_tiers']=$tiers_dropdown;
		
		$data['ecommerce_platforms']=array(''=>'None','woocommerce' => 'Woocommerce','shopify' => 'Shopify');
		
		$data['woo_versions'] = array('3.0.0'=>'3.0.0 or newer', '2.6.14'=>'2.6.0 to 2.6.14');
		
		$data['controller_name']=strtolower(get_class());
		$data['payment_options']=array(
				lang('common_cash') => lang('common_cash'),
				lang('common_check') => lang('common_check'),
				lang('common_giftcard') => lang('common_giftcard'),
				lang('common_debit') => lang('common_debit'),
				lang('common_credit') => lang('common_credit'),
				lang('common_store_account') => lang('common_store_account'),
				lang('common_none') => lang('common_none'),
		);
		
		$data['receipt_text_size_options']=array(
			'small' => lang('config_small'),
			'medium' => lang('config_medium'),
			'large' => lang('config_large'),
			'extra_large' => lang('config_extra_large'),
		);
		
		foreach($this->Appconfig->get_additional_payment_types() as $additional_payment_type)
		{
			$data['payment_options'][$additional_payment_type] = $additional_payment_type;
		}
		
		$data['tiers'] = $this->Tier->get_all();
		
		$data['zips'] = $this->Zip->get_all();
		$data['shipping_providers'] = $this->Shipping_provider->get_all();
		$data['shipping_zones'] = $this->Shipping_zone->get_all();
		$data['currency_denoms'] = $this->Register->get_register_currency_denominations();
		$data['currency_exchange_rates'] = $this->Appconfig->get_exchange_rates();
		
		$data['phppos_session_expirations'] = array('0' => lang('config_on_browser_close'));
		
		for($k=10;$k<=60;$k+=5)
		{
			$expire = $k*60;
			$data['phppos_session_expirations']["$expire"] = $k.' '.lang('common_minutes');
		}
		
		for($k=1;$k<=168;$k++)
		{
			$expire = $k*60*60;
			$data['phppos_session_expirations']["$expire"] = $k.' '.lang('config_hours');
		}
		
		$data['search'] = $this->input->get('search');
		
		$this->load->model('Tax_class');
		$data['tax_classes'] = array();
		
		foreach($this->Tax_class->get_all()->result_array() as $tax_class)
		{
			$data['tax_classes'][$tax_class['id']]['name'] = $tax_class['name'];
			$data['tax_classes'][$tax_class['id']]['taxes'] = $this->Tax_class->get_taxes($tax_class['id'], false);
		}
		
		$data['tax_classes_selection'] = array();
		$data['tax_classes_selection'][''] = lang('common_none');
		
		foreach($this->Tax_class->get_all()->result_array() as $tax_class)
		{
			$data['tax_classes_selection'][$tax_class['id']] = $tax_class['name'];
		}
		
		$data['tax_groups'] = array();
					
		foreach($data['tax_classes'] as $index => $tax_class)
		{
			$data['tax_groups'][] = array('text' => $tax_class['name'], 'val' => $index);
		}
		
		$data['zones'] = array();

		foreach($data['shipping_zones']->result_array() as $shipping_zone)
		{
			$data['zones'][] = array('text' => $shipping_zone['name'], 'val' => $shipping_zone['id']);
		}
		
    $data['item_lookup_order'] = unserialize($this->config->item('item_lookup_order'));
		
		$this->load->model('Sale_types');
		$data['sale_types'] = $this->Sale_types->get_all();
		
		$data['api_keys'] = $this->Appconfig->get_api_keys();
		
		$data['ecommerce_locations'] = $this->Appconfig->get_ecommerce_locations();
		$this->load->view("config", $data);
	}
	
	function save_shopify_config()
	{
		$batch_save_data = array(
			'ecommerce_platform' => 'shopify',
			'shopify_shop' => $this->input->post('shopify_shop'),	
			'ecommerce_cron_sync_operations' => $this->input->post('ecommerce_cron_sync_operations') ? serialize($this->input->post('ecommerce_cron_sync_operations')) : serialize(array()),
		);
		
		$this->Appconfig->batch_save($batch_save_data);
		
		echo json_encode(array('success'=>true,'message'=>lang('common_saved_successfully')));
		
	}
		
	function save()
	{
		if ($this->config->item("ecommerce_platform"))
		{
			require_once (APPPATH."models/interfaces/Ecom.php");
			$ecom_model = Ecom::get_ecom_model();
		}
		
		$this->load->helper('demo');
		$this->load->model('Appfile');
		if(!empty($_FILES["company_logo"]) && $_FILES["company_logo"]["error"] == UPLOAD_ERR_OK && !is_on_demo_host())
		{
			$allowed_extensions = array('png', 'jpg', 'jpeg', 'gif');
			$extension = strtolower(pathinfo($_FILES["company_logo"]["name"], PATHINFO_EXTENSION));
			
			if (in_array($extension, $allowed_extensions))
			{
				$config['image_library'] = 'gd2';
				$config['source_image']	= $_FILES["company_logo"]["tmp_name"];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = TRUE;
				$config['width']	 = 255;
				$config['height']	= 90;
				$this->load->library('image_lib', $config); 
				$this->image_lib->resize();
				
				$company_logo = $this->Appfile->save($_FILES["company_logo"]["name"], file_get_contents($_FILES["company_logo"]["tmp_name"]), NULL, $this->config->item('company_logo'));
			}
		}
		elseif($this->input->post('delete_logo'))
		{
			$this->Appfile->delete($this->config->item('company_logo'));
		}
		//Catch an error if our company name is NOT set. This can happen if logo uploaded is larger than post size
		if (!$this->input->post('company'))
		{
			echo json_encode(array('success'=>false,'message'=>lang('config_saved_unsuccessfully')));
			exit;
		}

		try
		{
			$errorMessage = "";
			if ($this->config->item('quickbooks_access_token')) {
				// Store The country code into the variable
				$countryID = US_CODE;
				if ($this->config->item('quickbooks_access_token')) {
				
					$this->load->helper('qb');
					// refresh the token before creating the dataservice
					refresh_tokens(0);
					$dataService = _get_data_service(true, true);
					// Get the company info which with current QBO is connected
					$companyInfo = $dataService->Query("SELECT * FROM CompanyInfo");
					$error = $dataService->getLastError();
					if (!$error) 
					{
						$countryID = $companyInfo['0']->Country;
					} else {
						$last_error = $dataService->getLastError();
						$xml = simplexml_load_string($last_error->getResponseBody());
						$error_message = (string)$xml->Fault->Error->Detail;
						$this->_log("*******".lang('common_EXCEPTION').": ".$error_message);
					}
				}
			
				$default_country_id = $countryID;
				$syncoperation = $this->input->post('qb_sync_operations');
			}
		}
		catch(Exception $e)
		{
			$errorMessage = lang('common_error');
		}

        
		
		$deleted_payment_types = array();
		
		if ($this->input->post('deleted_payment_types'))
		{
			$cur_lang_value_to_keys = array(
				lang('common_cash') => 'common_cash',
				lang('common_check') => 'common_check',
				lang('common_giftcard') => 'common_giftcard',
				lang('common_debit') => 'common_debit',
				lang('common_credit') => 'common_credit',
			);
			
			foreach(explode(',',$this->input->post('deleted_payment_types')) as $payment_type)
			{
				$deleted_payment_types[] = $payment_type;
				
				$this->load->helper('directory');
				$language_folder = directory_map(APPPATH.'language',1);
		
				$languages = array();
				
				foreach($language_folder as $language_folder)
				{
					$languages[] = substr($language_folder,0,strlen($language_folder)-1);
				}
				
				foreach($languages as $language)
				{
					$this->lang->load('common', $language);
					$key = $cur_lang_value_to_keys[$payment_type];						
					$deleted_payment_types[] = lang($key);
				}	
			}
			
			//Switch back
			$this->lang->switch_to($this->config->item('language'));
			
		}
		$deleted_payment_types = implode(',',$deleted_payment_types);
		$this->load->helper('directory');
		
		$crlf_option = "\r\n";
		if ($option = $this->input->post('crlf'))
		{
			if ($option == "rn")
			{
				$crlf_option = "\r\n";
			}
			elseif($option == "n")
			{
				$crlf_option = "\n";
			}
			elseif($option == "r")
			{
				$crlf_option = "\r";
			}
		}

		$newline_option = "\r\n";
		if ($option = $this->input->post('newline'))
		{
			if ($option == "rn")
			{
				$newline_option = "\r\n";
			}
			elseif($option == "n")
			{
				$newline_option = "\n";
			}
			elseif($option == "r")
			{
				$newline_option = "\r";
			}
		}
		
		$force_https = $this->input->post('force_https') ? 1 : 0;
		
		if ($force_https)
		{
			$testing_url = site_url('testing','https');
			
			//TEST HTTPS connection by sending https request to keep_alive in home controller
      $ch = curl_init(); 
      curl_setopt($ch, CURLOPT_URL, $testing_url); 
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
			curl_setopt($ch, CURLOPT_CONNECTTIMEOUT ,3); 
			curl_setopt($ch, CURLOPT_TIMEOUT, 3);
      $testing_response = curl_exec($ch); 
      curl_close($ch);		
			if (!$testing_response)
			{
				$force_https=0;
			}
			
		}
		
		#$valid_languages = str_replace(DIRECTORY_SEPARATOR,'',directory_map(APPPATH.'language/', 1));
		$batch_save_data=array(
		'company'=>$this->input->post('company'),
		#'qb_export_start_date'=>$this->input->post('export_start_date'),
		#restaurar'sale_prefix'=>$this->input->post('sale_prefix') ? $this->input->post('sale_prefix') : 'POS',
		'website'=>$this->input->post('website'),
		
	);

	/*Old way of doing taxes; we handle this case / Comentar impuestos
		if($this->input->post('default_tax_1_rate') !== NULL)
		{
			$legacy_taxes = array(
			'default_tax_1_rate'=>$this->input->post('default_tax_1_rate'),		
			'default_tax_1_name'=>$this->input->post('default_tax_1_name'),		
			'default_tax_2_rate'=>$this->input->post('default_tax_2_rate'),	
			'default_tax_2_name'=>$this->input->post('default_tax_2_name'),
			'default_tax_2_cumulative' => $this->input->post('default_tax_2_cumulative') ? 1 : 0,
			'default_tax_3_rate'=>$this->input->post('default_tax_3_rate'),	
			'default_tax_3_name'=>$this->input->post('default_tax_3_name'),
			'default_tax_4_rate'=>$this->input->post('default_tax_4_rate'),	
			'default_tax_4_name'=>$this->input->post('default_tax_4_name'),
			'default_tax_5_rate'=>$this->input->post('default_tax_5_rate'),	
			'default_tax_5_name'=>$this->input->post('default_tax_5_name'));
			
			$batch_save_data = array_merge($batch_save_data,$legacy_taxes);
		}
	*/

	/*Comentar configuracion ID autoincrementable
		if($this->input->post('item_id_auto_increment'))
		{
			$this->Appconfig->change_auto_increment('items',$this->input->post('item_id_auto_increment'));
		}
		
		if($this->input->post('item_kit_id_auto_increment'))
		{
			$this->Appconfig->change_auto_increment('item_kits',$this->input->post('item_kit_id_auto_increment'));
		}
		
		if($this->input->post('sale_id_auto_increment'))
		{
			$this->Appconfig->change_auto_increment('sales',$this->input->post('sale_id_auto_increment'));
			
		}
		
		if($this->input->post('receiving_id_auto_increment'))
		{
			$this->Appconfig->change_auto_increment('receivings',$this->input->post('receiving_id_auto_increment'));
		}
		*/
		/*Comentar impuestos
		if ($this->input->post('use_tax_value_at_all_locations'))
		{
			$this->Appconfig->set_all_locations_use_global_tax();
		}
		*/
		if (isset($company_logo))
		{
			$batch_save_data['company_logo'] = $company_logo;
		}
		elseif($this->input->post('delete_logo'))
		{
			$batch_save_data['company_logo'] = 0;
		}
		
		if (is_on_demo_host())
		{
			$batch_save_data['language'] = 'spanish';
			$batch_save_data['currency_symbol'] = 'Q';
			$batch_save_data['currency_code'] = 'GTQ';
			$batch_save_data['currency_symbol_location'] = 'before';
			$batch_save_data['number_of_decimals'] = '';
			$batch_save_data['thousands_separator'] =',';
			$batch_save_data['decimal_point'] ='.';
			$batch_save_data['company_logo'] = 0;
			$batch_save_data['company'] = 'SUMIT';
			$batch_save_data['test_mode'] = 0;
		}
		/*Monedas*/
		if($this->Appconfig->batch_save($batch_save_data) 
			&& $this->save_tiers($this->input->post('tiers_to_edit'), $this->input->post('tiers_to_delete'))
			&& $this->save_sale_types($this->input->post('sale_types_to_edit'), $this->input->post('sale_types_to_delete'))
			/*Monedas
			&& $this->Register->save_register_currency_denominations($this->input->post('currency_denoms_name'), $this->input->post('currency_denoms_value'), $this->input->post('currency_denoms_ids'),$this->input->post('deleted_denmos'))
			&& $this->Appconfig->save_exchange_rates(
				$this->input->post('currency_exchange_rates_to'),
				$this->input->post('currency_exchange_rates_symbol'), 
				$this->input->post('currency_exchange_rates_rate'),
				$this->input->post('currency_exchange_rates_symbol_location'),
				$this->input->post('currency_exchange_rates_number_of_decimals'),
				$this->input->post('currency_exchange_rates_thousands_separator'),
				$this->input->post('currency_exchange_rates_decimal_point')
				)
			*/	
			)
		{
			
			$this->Appconfig->save_ecommerce_locations($this->input->post('ecommerce_locations'));
			
			$providers_to_save = $this->input->post('providers');
			$methods_to_save = $this->input->post('methods');		
		  
			$providers_to_delete = $this->input->post('providers_to_delete');
			$methods_to_delete = $this->input->post('methods_to_delete');
						
			
			$this->load->model('Shipping_provider');
			$this->load->model('Shipping_method');
		
			if ($providers_to_save)
			{
				$provider_order = 1;			
				foreach($providers_to_save as $provider_id => $data)
				{
					$provider_name = $data['name'];
			
					if ($provider_name)
					{
						$provider_data = array('name' => $provider_name,  'order' => $provider_order);
						$this->Shipping_provider->save($provider_data, $provider_id < 0 ? false : $provider_id);
						
						if ($methods_to_save)
						{							
							for($k=0; $k<count($methods_to_save[$provider_id]['name']); $k++)
							{
								$method_name = $methods_to_save[$provider_id]['name'][$k];
								$fee = $methods_to_save[$provider_id]['fee'][$k];
								$time_in_days = $methods_to_save[$provider_id]['time_in_days'][$k] ? $methods_to_save[$provider_id]['time_in_days'][$k] : NULL;
								$is_default = isset($methods_to_save[$provider_id]['is_default'][$k]) ? 1 : 0;
								
								$method_id = isset($methods_to_save[$provider_id]['method_id'][$k]) && $methods_to_save[$provider_id]['method_id'][$k] ? $methods_to_save[$provider_id]['method_id'][$k] : -1;
								
								if ($method_name)
								{
									$method_data_save = array('shipping_provider_id' => $provider_id < 0 ? $provider_data['id'] : $provider_id, 'name' => $method_name, 'fee' => $fee, 'time_in_days' => $time_in_days, 'is_default' => $is_default);									
									
									$this->Shipping_method->save($method_data_save, $method_id < 0 ? false : $method_id);
				
								}
							}
						}
										
						$provider_order++;
					}
				}
			}
			
			if ($methods_to_delete)
			{
				foreach($methods_to_delete as $method_id)
				{
					$this->Shipping_method->delete($method_id);
				}
			}
			
			if ($providers_to_delete)
			{
				foreach($providers_to_delete as $provider_id)
				{
					$this->Shipping_provider->delete($provider_id);
				}
			}
			
			
			$zones_to_save = $this->input->post('zones');
			$zones_to_delete = $this->input->post('zones_to_delete');
			
			$this->load->model('Shipping_zone');
			$this->load->model('Zip');
			
			$this->Zip->delete_all();
			
			
			if ($zones_to_save)
			{
				$zone_order = 1;			
									
				foreach($zones_to_save as $zone_id => $data)
				{
					$zone_name = $data['name'];
					$zone_fee = $data['fee'];
					$zone_tax_class_id = $data['tax_class_id'];
					$zone_zips = explode("|", $data['zips']);
					
					if ($zone_name)
					{
						$zone_data = array('name' => $zone_name, 'fee' => $zone_fee, 'tax_class_id' => $zone_tax_class_id, 'order' => $zone_order);
						$this->Shipping_zone->save($zone_data, $zone_id < 0 ? false : $zone_id);
						if($zone_zips)
						{
							$zip_order = 0;
							foreach($zone_zips as $zip)
							{
								$this->Zip->save($zip, $zip_order, $zone_id < 0 ? $zone_data['id'] : $zone_id);
								$zip_order ++;
							}
						}
						$zone_order++;
					}				
				}				
			}
			
			if ($zones_to_delete)
			{
				foreach($zones_to_delete as $zone_id)
				{
					$this->Shipping_zone->delete($zone_id);
				}
			}	
			
			$has_default_tax_class = (boolean)$this->input->post('tax_class_id');
			$tax_classes_to_save = $this->input->post('tax_classes');
			$taxes_to_save = $this->input->post('taxes');		
		  
			$tax_classes_to_delete = $this->input->post('tax_classes_to_delete');
			$taxes_to_delete = $this->input->post('taxes_to_delete');
						
			
			$this->load->model('Tax_class');
		
		
			if ($tax_classes_to_save)
			{
				$tax_class_order = 1;			
				foreach($tax_classes_to_save as $tax_class_id => $data)
				{
					$tax_class_name = $data['name'];
			
					if ($tax_class_name)
					{
						$tax_class_data = array('name' => $tax_class_name,  'order' => $tax_class_order);
						$this->Tax_class->save($tax_class_data, $tax_class_id < 0 ? false : $tax_class_id);
						
						if ($this->input->post('tax_class_id') < 0 && $tax_class_id == $this->input->post('tax_class_id'))
						{
							$has_default_tax_class = TRUE;
							$this->Appconfig->save('tax_class_id',$tax_class_data['id']);
						}
						
						if ($taxes_to_save)
						{
							$taxes_order = 1;
							
							if (isset($taxes_to_save[$tax_class_id]['name']))
							{
								for($k=0; $k<count($taxes_to_save[$tax_class_id]['name']); $k++)
								{
									$tax_name = $taxes_to_save[$tax_class_id]['name'][$k];
									$tax_percent = $taxes_to_save[$tax_class_id]['percent'][$k];
									$cumulative = isset($taxes_to_save[$tax_class_id]['cumulative'][$k]) && $taxes_to_save[$tax_class_id]['cumulative'][$k] ? 1 : 0;
									$tax_class_tax_id = isset($taxes_to_save[$tax_class_id]['tax_class_tax_id'][$k]) && $taxes_to_save[$tax_class_id]['tax_class_tax_id'][$k] ? $taxes_to_save[$tax_class_id]['tax_class_tax_id'][$k] : -1;
								
									if ($tax_name)
									{
										$tax_class_tax_data = array('tax_class_id' => $tax_class_id < 0 ? $tax_class_data['id'] : $tax_class_id, 'name' => $tax_name, 'percent' => $tax_percent, 'cumulative' => $cumulative,'order' => $taxes_order);																			
										$this->Tax_class->save_tax($tax_class_tax_data, $tax_class_tax_id < 0 ? false : $tax_class_tax_id);
										$taxes_order++;
									}
								}
						
							}
						}			
						$tax_class_order++;
					}
				
					if (isset($ecom_model))
					{
						$tax_class_ids_to_save[] = $tax_class_id < 0 ? $tax_class_data['id'] : $tax_class_id;
					}
				}
			}
			
			if ($tax_classes_to_delete)
			{
				foreach($tax_classes_to_delete as $tax_class_id)
				{
					$this->Tax_class->delete($tax_class_id);
				}
			}
			
			if ($taxes_to_delete)
			{
				foreach($taxes_to_delete as $tax_class_tax_id)
				{
					$this->Tax_class->delete_tax($tax_class_tax_id);
				}
			}
			
			if ($has_default_tax_class === FALSE)
			{
				$default_tax_class_id = $this->Tax_class->get_first_tax_class_id();
				$this->Appconfig->save('tax_class_id',$default_tax_class_id);
			}
			
			if (isset($ecom_model))
			{
				foreach($tax_class_ids_to_save as $tax_class_save_id)
				{
					$ecom_model->save_tax_class($tax_class_save_id);
				}
			}
			
			$markup_markdown_encoded = $this->input->post('markup_markdown');
			$markup_markdown = array();
			foreach($markup_markdown_encoded as $key =>$value)
			{
				$markup_markdown[hex_decode($key)] = (float)$value;
			}
			$this->Appconfig->save('markup_markdown',serialize($markup_markdown));
				
			$this->Appconfig->save('wizard_configure_company',1);
			echo json_encode(array('success'=>true,'message'=>lang('common_saved_successfully')));
		}
		else
		{
			echo json_encode(array('success'=>false,'message'=>lang('config_saved_unsuccessfully')));
		}
	}
	
	function send_smtp_test_email()
	{
		$this->load->library('email');
		$ret = $this->email->test_email($this->input->post('email'));
		
		if ($ret === TRUE)
		{
			echo json_encode(array('success' => TRUE, 'message' => lang('config_email_succesfully_sent')));
		}
		else
		{
			echo json_encode(array('success' => FALSE, 'message' => $ret));				
		}
	}
	
	function save_sale_types($sales_types_to_edit, $sales_types_to_delete)
	{
		$this->load->model('Sale_types');
		
		if ($sales_types_to_edit)
		{
			$order = 1;			
			foreach($sales_types_to_edit as $sale_type_id => $data)
			{
				$name = $data['name'];
				if ($name)
				{
					$sale_type_data = array('name' => $name, 'sort' => $order,'remove_quantity' => isset($data['remove_quantity']) && $data['remove_quantity'] ? 1 : 0);
					$this->Sale_types->save($sale_type_data, $sale_type_id);
					
					$order++;
				}
			}
		}
		
		if ($sales_types_to_delete)
		{
			foreach($sales_types_to_delete as $sale_type_id)
			{
				$this->Sale_types->delete($sale_type_id);
			}
		}
		return TRUE;
	}
	
	function save_tiers($tiers_to_edit, $tiers_to_delete)
	{
		$this->load->model('Tier');
		
		if ($tiers_to_edit)
		{
			$order = 1;			
			foreach($tiers_to_edit as $tier_id => $data)
			{
				$name = $data['name'];
				$default_percent_off = $data['default_percent_off'];
				$default_cost_plus_percent = $data['default_cost_plus_percent'];
				$default_cost_plus_fixed_amount = $data['default_cost_plus_fixed_amount'];
				
				if ($name)
				{
					$tier_data = array('name' => $name, 'default_percent_off' => $default_percent_off !=='' ? (float)$default_percent_off : NULL,  'default_cost_plus_percent' => $default_cost_plus_percent !=='' ? (float)$default_cost_plus_percent : NULL,  'default_cost_plus_fixed_amount' => $default_cost_plus_fixed_amount !=='' ? (float)$default_cost_plus_fixed_amount : NULL, 'order' => $order);
					$this->Tier->save($tier_data, $tier_id < 0 ? false : $tier_id);
					
					$order++;
				}
			}
		}
		
		if ($tiers_to_delete)
		{
			foreach($tiers_to_delete as $tier_id)
			{
				$this->Tier->delete($tier_id);
			}
		}
		return TRUE;
	}
	
	function backup()
	{
		$this->load->view("backup_overview");
	}
	
	function do_backup()
	{
		session_write_close();
		$date = date('Y-m-d');
		$filename = "php_point_of_sale_$date.sql";
		$this->load->helper('download');
		set_time_limit(0);
		ini_set('max_input_time','-1');
		$this->load->dbutil();
		$prefs = array(
			'foreign_key_checks' => FALSE,
			'format'      => 'txt',             // gzip, zip, txt
			'add_drop'    => FALSE,              // Whether to add DROP TABLE statements to backup file
			'add_insert'  => TRUE,              // Whether to add INSERT data to backup file
			'newline'     => "\n"               // Newline character used in backup file
    	);
		$backup =$this->dbutil->backup($prefs);
		$backup = 'SET SESSION sql_mode="NO_AUTO_VALUE_ON_ZERO";'."\n".$backup;
		force_download($filename, $backup);
	}
	
	function do_mysqldump_backup()
	{
		session_write_close();
		$success = FALSE;
		
		set_time_limit(0);
		ini_set('max_input_time','-1');
		$date = date('Y-m-d');
		$filename = "php_point_of_sale_$date.sql";
		if (is_callable('passthru') && false === stripos(ini_get('disable_functions'), 'passthru'))
		{
			$mysqldump_paths = array();
		
		    // 1st: use mysqldump location from `which` command.
		    $mysqldump = trim(`which mysqldump`);
		
		    if (is_executable($mysqldump))
			{
				array_unshift($mysqldump_paths, $mysqldump);
			}
			else
			{
			    // 2nd: try to detect the path using `which` for `mysql` command.
			    $mysqldump = dirname(`which mysql`) . "/mysqldump";
			    if (is_executable($mysqldump))
				{
					array_unshift($mysqldump_paths, $mysqldump);			
				}
			}
		
			// 3rd: Default paths
			$mysqldump_paths[] = 'C:\Program Files\PHP Point of Sale Stack\mysql\bin\mysqldump.exe';  //Windows
			$mysqldump_paths[] = 'C:\PHPPOS\mysql\bin\mysqldump.exe';  //Windows
			$mysqldump_paths[] = '/Applications/phppos/mysql/bin/mysqldump';  //Mac
			$mysqldump_paths[] = '/Applications/MAMP/Library/bin/mysqldump';  //Mac Mamp
			$mysqldump_paths[] = 'c:\xampp\mysql\bin\mysqldump.exe';//XAMPP

			$mysqldump_paths[] = '/opt/phppos/mysql/bin/mysqldump';  //Linux
			$mysqldump_paths[] = '/usr/bin/mysqldump';  //Linux
			$mysqldump_paths[] = '/usr/local/mysql/bin/mysqldump'; //Mac
			$mysqldump_paths[] = '/usr/local/bin/mysqldump'; //Linux
			$mysqldump_paths[] = '/usr/mysql/bin/mysqldump'; //Linux

			
			if (is_on_phppos_host())
			{
				$master = $this->load->database('master', TRUE);
				
				$database = escapeshellarg($master->database);
				$db_hostname = escapeshellarg($master->hostname);
				$db_username= escapeshellarg($master->username);
				$db_password = escapeshellarg($master->password);
				
				if (isset($master) && $master)
				{
					$master->close();
				}
			}
			else
			{
				$database = escapeshellarg($this->db->database);
				$db_hostname = escapeshellarg($this->db->hostname);
				$db_username= escapeshellarg($this->db->username);
				$db_password = escapeshellarg($this->db->password);
			}
			
			foreach($mysqldump_paths as $mysqldump)
			{
			
				if (is_executable($mysqldump))
				{
					$backup_command = "\"$mysqldump\" --host=$db_hostname --user=$db_username --password=$db_password --tz-utc=false --single-transaction --routines --triggers $database";
				
					// set appropriate headers for download ...  
					header('Content-Description: File Transfer');
					header('Content-Type: application/octet-stream');
					header('Content-Disposition: attachment; filename="'.$filename.'"');
					header('Content-Transfer-Encoding: binary');
					header('Connection: Keep-Alive');
					header('Expires: 0');
					header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
					header('Pragma: public');
				
					$status = false; 
					passthru($backup_command, $status);
					$success = $status == 0;
					break;
				}
			}
		}
		if (!$success)
		{
			header('Content-Description: Error message');
			header('Content-Type: text/plain');
			header('Content-Disposition: inline');
			header('Content-Transfer-Encoding: base64');
			header('Expires: 0');
			header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
			header('Pragma: public');
			die(lang('config_mysqldump_failed'));	
		}
	}		
	function is_update_available()
	{
		session_write_close();
		$this->load->helper('update');
		echo json_encode(is_phppos_update_available());
	}
	function ecom_documentation(){
		
		$this->load->view('ecom_documentation');
	
	}
	
	function reset_ecom()
	{
		$platform=$this->Appconfig->get("ecommerce_platform");
		if($platform=="woocommerce")
		{
			$platform_model="woo";
		}
		
		if($platform=="shopify")
		{
			$platform_model="shopify";
		}
		
		if( $platform_model != "" )
		{			
			$this->load->model($platform_model);
			$this->$platform_model->reset_ecom();
		}
		
		echo json_encode(array('success'=>true,'message'=>lang('config_reset_ecom_successfully')));
		
	}
	
	function reset_qb()
	{
		$this->load->model('QuickbooksModel');
		$qb = $this->QuickbooksModel->reset_qb();		
		echo json_encode(array('success'=>true,'message'=>lang('config_reset_qb_successfully')));
		
	}
	
	
	function add_api_key()
	{
		$this->load->model('Appconfig');
		$data = array('api_key' => $this->Appconfig->generate_key());
		$this->load->view("add_api_key_modal",$data);
	}
	
	function save_api_key()
	{
		$this->load->model('Appconfig');
		$data['level'] = $this->input->post('level');
		$data['description'] = $this->input->post('description');
		$data['date_created'] = time();
		$this->Appconfig->insert_key($this->input->post('api_key'),$data);
		redirect($_SERVER['HTTP_REFERER'] ? $_SERVER['HTTP_REFERER'] : site_url('config'));
	}
	
  public function delete_key()
  {
		$this->load->model('Appconfig');
		$this->Appconfig->delete_api_key($this->input->post('api_key_id'));
		redirect($_SERVER['HTTP_REFERER'] ? $_SERVER['HTTP_REFERER'] : site_url('config'));
  }
  
  public function shopify()
  {
	$data = array();
	$locations_dropdown=array();

	$locations_result=$this->Location->get_all();
	$locations=$locations_result->result_array();
	$tiers_result=$this->Tier->get_all();
	$tiers=$tiers_result->result_array();

	foreach($locations as $location){
	$locations_dropdown[$location['location_id']]=$location['name'];
	}

	$tiers_dropdown=array(""=>lang('common_none'));

	foreach($tiers as $tier){
	$tiers_dropdown[$tier['id']]=$tier['name'];
	}


	// Code to get chart of accounts ends

	$data['store_locations']=$locations_dropdown;
	$data['online_price_tiers']=$tiers_dropdown;

	$this->load->view('shopify_config',$data);
  }
	
}
?>
