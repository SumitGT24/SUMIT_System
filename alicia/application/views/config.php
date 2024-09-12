<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>

<div class="manage_buttons">
	<div class="manage-row-options">
		<div class="email_buttons text-center">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-2">
					<div class="search-tpl">
						<div class="input-group">
						  <span class="input-group-addon" id="search-addon"><span class="glyphicon glyphicon-search"></span></span>
						  <input aria-describedby="search-addon" type="text" class="form-control" name ="search" id="search"  placeholder="<?php echo lang('common_search') ?>" value="<?php echo H($search); ?>" />
						</div>
					</div>
				</div>
			</div>
		</div><!-- end email_buttons -->
	</div><!-- manage-row-options -->
</div><!-- manage_buttons -->

<div class="manage_buttons buttons-list config-page container">
	
</div>
<div class="text-center location-settings">
	<?php echo lang('config_looking_for_location_settings').' '.anchor($this->Location->count_all() > 1 ? 'locations' : 'locations/view/1', lang('module_locations').' '.lang('config_module'), 'class="btn btn-info"');?>
</div>
<div class="config-panel">
	
	<?php
	//for help window popups
	$popupAtts = array(
    'width'       => 800,
    'height'      => 600,
    'scrollbars'  => 'yes',
    'status'      => 'yes',
    'resizable'   => 'yes',
    'screenx'     => 0,
    'screeny'     => 0,
    'window_name' => '_blank'
	);
	
	function create_section($title)
	{
		return $title ;
	}
	?>
	<!--Lista de elementos de configuracion que se guardan-->
	<div class="row">
		<?php echo form_open_multipart('config/save/',array('id'=>'config_form','class'=>'form-horizontal', 'autocomplete'=> 'off'));  ?>
	<?php 
		$this->load->helper('update');
		if (is_on_phppos_host() && !is_on_demo_host() && !empty($cloud_customer_info)) {?>
		<!-- Billing Information -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo lang("config_billing_info"); ?>
				</div>
				<div class="panel-body">
					<div class="alert alert-info" role="alert"><span class="glyphicon glyphicon-info-sign"></span> <?php echo lang('config_update_billing');?></div>
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_billing')) ?>">	
						<?php if ($cloud_customer_info['payment_provider'] == 'paypal') { ?>
							
							<div class="row">
								<div class="col-md-10 col-md-offset-2">
									<?php echo lang('config_billing_is_managed_through_paypal');?>
								</div>
							</div>
							
						<?php } else { ?>
							<div class="row">
								<div class="col-md-4 col-md-offset-2">
									<a class="btn btn-block btn-update-billing btn-primary" href="https://api.whatsapp.com/send/?phone=50247192667&text&type=phone_number&app_absent=0" target="_blank"><?php echo lang('common_update_billing_info');?></a>				
								</div>
								<div class="col-md-4">
									<a class="btn btn-block btn-update-billing btn-default" href="https://api.whatsapp.com/send/?phone=50247192667&text&type=phone_number&app_absent=0" target="_blank"><?php echo lang('config_cancel_account');?></a>
								</div>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>
		<!-- Company Information -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang("config_company_info"))  ?>
				</div>
				<div class="panel-body">
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_company')) ?>">	
						<?php echo form_label(lang('common_company_logo').':', 'company_logo',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							
							<input type="file" name="company_logo" id="company_logo" class="filestyle" data-icon="false">  	
						</div>	
					</div>
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_company')) ?>">	
						<?php echo form_label(lang('common_delete_logo').':', 'delete_logo',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox('delete_logo', '1', null,'id="delete_logo"');?>
							<label for="delete_logo"><span></span></label>
						</div>	
					</div>
			
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_company')) ?>">	
						<?php echo form_label(lang('common_company').':', 'company',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label  required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class'=>'validate form-control form-inps',
							'name'=>'company',
							'id'=>'company',
							'value'=>$this->config->item('company')));?>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_company')) ?>">	
						<?php echo form_label(lang('common_website').':', 'website',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
						<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'website',
							'id'=>'website',
							'value'=>$this->config->item('website')));?>
						</div>
					</div>
				</div>
			</div>	
		</div>

		<!-- Payment Types -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_payment_types_info'))  ?>
				</div>
				<div class="panel-body">
						
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_payment')) ?>">	
						<?php echo form_label(lang('config_payment_types').':', 'additional_payment_types',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<a href="#" class="btn btn-primary payment_types"><?php echo lang('common_cash'); ?></a> 
							<a href="#" class="btn btn-primary payment_types"><?php echo lang('common_check'); ?></a> 
							<a href="#" class="btn btn-primary payment_types"><?php echo lang('common_giftcard'); ?></a> 
							<a href="#" class="btn btn-primary payment_types"><?php echo lang('common_debit'); ?></a> 
							<a href="#" class="btn btn-primary payment_types"><?php echo lang('common_credit'); ?></a>
							<br>
							<br>
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
								'name'=>'additional_payment_types',
								'id'=>'additional_payment_types',
								'size'=> 40,
								'value'=>$this->config->item('additional_payment_types')));?>
						</div>
					</div>
					
					<?php
					
					$markup_markdown = array();
					if ($this->config->item('markup_markdown'))
					{
						$markup_markdown = unserialize($this->config->item('markup_markdown'));
					}
					
					foreach(array_keys($this->Sale->get_payment_options_with_language_keys()) as $payment_type)
					{
					?>
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_payment')) ?>">
							<?php echo form_label($payment_type.' '.lang('config_markup_markdown').' '.lang('common_percentage'), 'payment_type_markup_markdown',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
								
								<?php 
								$markup_down_value = isset($markup_markdown[$payment_type]) ? $markup_markdown[$payment_type] : '';
								echo form_input(array(
								'class'=>'form-control form-inps',
								'name'=>'markup_markdown['.hex_encode($payment_type).']',
								'id'=>'sale_prefix',
								'value'=>$markup_down_value));?>
							</div>
						</div>
						
					<?php
					}
					?>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_payment')) ?>">	
						<?php echo form_label(lang('config_default_payment_type').':', 'default_payment_type',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('default_payment_type', $payment_options, $this->config->item('default_payment_type'),'class="form-control" id="default_payment_type"'); ?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_payment')) ?>">	
						<?php echo form_label(lang('config_default_payment_type_recv').':', 'default_payment_type_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('default_payment_type_recv', $payment_options, $this->config->item('default_payment_type_recv'),'class="form-control" id="default_payment_type_recv"'); ?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_payment')) ?>">
						<?php echo form_label(lang('config_show_selling_price_on_recv'). ':', 'show_selling_price_on_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
							'name'=>'show_selling_price_on_recv',
							'id'=>'show_selling_price_on_recv',
							'value'=>'1',
							'checked'=>$this->config->item('show_selling_price_on_recv')));?>
							<label for="show_selling_price_on_recv"><span></span></label>
						</div>
					</div>
									
				</div>
			</div>
		</div>
		
		<!-- Price Rules-->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_price_rules_info'))  ?>
				</div>
				<div class="panel-body">
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_price_rules')) ?>">	
						<?php echo form_label(lang('config_disable_price_rules_dialog').':', 'disable_price_rules_dialog',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_price_rules_dialog',
							'id'=>'disable_price_rules_dialog',
							'value'=>'disable_price_rules_dialog',
							'checked'=>$this->config->item('disable_price_rules_dialog')));?>
							<label for="disable_price_rules_dialog"><span></span></label>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<!-- Orders and Deliveries -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_orders_and_deliveries_info'))  ?>
				</div>
				<div class="panel-body">
					
				<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_orders_deliveries')) ?>">	
					<?php echo form_label(lang('config_do_not_tax_service_items_for_deliveries').':', 'do_not_tax_service_items_for_deliveries',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
					<div class="col-sm-9 col-md-9 col-lg-10">
					<?php echo form_checkbox(array(
						'name'=>'do_not_tax_service_items_for_deliveries',
						'id'=>'do_not_tax_service_items_for_deliveries',
						'value'=>'1',
						'checked'=>$this->config->item('do_not_tax_service_items_for_deliveries')));?>
						<label for="do_not_tax_service_items_for_deliveries"><span></span></label>
					</div>
				</div>
					
				<div class="form-group no-padding-right" data-keyword="<?php echo H(lang('config_keyword_orders_deliveries')) ?>">	
					<?php echo form_label(lang('config_shipping_providers').':', '',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-md-9 col-sm-9 col-lg-10">
							<div class="table-responsive">
								<table id="shipping_providers" class="table">
									<thead>
										<tr>
											<th><?php echo lang('common_name'); ?></th>
											<th><?php echo lang('config_rate_name'); ?></th>
											<th><?php echo lang('config_rate_fee'); ?></th>			
											<th><?php echo lang('config_delivery_time'); ?></th>
															
											<th><?php echo lang('common_default'); ?></th>
											<th><?php echo lang('common_delete'); ?></th>
											
											<th><?php echo lang('common_add'); ?></th>
											<th><?php echo lang('config_sort'); ?></th>
										</tr>
									</thead>
									
									<tbody>
										
									<?php
									 foreach($shipping_providers->result_array() as $shipping_provider) { 
										 $provider_id = $shipping_provider['id'];
										 
										 $methods = $this->Shipping_method->get_all($provider_id)->result_array();
										 $sorted_shipping_methods = array();
										 
										 foreach($methods as $method)
										 {
											 $sorted_shipping_methods['id'][] = $method['id'];
											 $sorted_shipping_methods['name'][] = $method['name'];
											 $sorted_shipping_methods['fee'][] = $method['fee'];
											 $sorted_shipping_methods['time_in_days'][] = $method['time_in_days'];
											 $sorted_shipping_methods['is_default'][] = $method['is_default'];
										 }
											
										 //If we don't have any methods the 1st row should have blanks
										 if (empty($sorted_shipping_methods['name']))
										 {
	  										$sorted_shipping_methods['id'][] = '';
	 										 	$sorted_shipping_methods['name'][] = '';
											 	$sorted_shipping_methods['fee'][] = 0;
											 	$sorted_shipping_methods['fee_tax'][] = 0;
											 	$sorted_shipping_methods['time_in_days'][] = '';
											 	$sorted_shipping_methods['is_default'][] = '';
										 }
											
										 ?>
										<tr data-index="<?php echo H($provider_id); ?>">
											<td class="shipping_provider_name top">
												<input type="text" class="rates form-control" name="providers[<?php echo H($provider_id); ?>][name]" value="<?php echo H($shipping_provider['name']);?>" />
												<?php foreach($sorted_shipping_methods['name'] as $index => $name) { ?>
													<input type="hidden" name="methods[<?php echo H($provider_id); ?>][method_id][]" value="<?php echo H($sorted_shipping_methods['id'][$index]); ?>">
												<?php } ?>
											</td>
											<td class="delivery_rate_name top">
												
												<?php foreach($sorted_shipping_methods['name'] as $index => $name) { ?>
													<input data-method-id="<?php echo H($sorted_shipping_methods['id'][$index]); ?>" type="text" class="rates form-control" name="methods[<?php echo H($provider_id); ?>][name][]" value="<?php echo H($name);?>" />
												<?php } ?>
											</td>
											
											<td class="delivery_fee top">
												<?php foreach($sorted_shipping_methods['fee'] as $fee) { ?>
													<input type="text" class="rates form-control" name="methods[<?php echo H($provider_id); ?>][fee][]" value="<?php echo H(to_currency_no_money($fee));?>" />
												<?php } ?>
											</td>
											
											<td class="delivery_time top">
												<?php foreach($sorted_shipping_methods['time_in_days'] as $time_in_days) { ?>
													<input type="text" class="rates form-control" name="methods[<?php echo H($provider_id); ?>][time_in_days][]" value="<?php echo H(to_quantity($time_in_days, ''));?>" />
												<?php } ?>
											</td>
											
											
											<td class="delivery_default top">
												<?php 
												$i = 0;
												foreach($sorted_shipping_methods['is_default'] as $is_default) { 
													echo form_radio(array(
														'id' => 'default_shipping_rate_'. $provider_id . '_' . $i,
														'name' =>'methods['. H($provider_id) .']'.'[is_default][]',
														'value' => '1',
														'checked' => $is_default == 1 ? 'checked' : '',
													)); 
												?>
												<label class="shipping_table_rate_element" for="<?php echo H('default_shipping_rate_' . $provider_id . '_' . $i); ?>"><span></span></label>
												<?php
													$i++;
												} ?>
											</td>
											<td>
												<a class="delete_rate shipping_table_rate_text_element"><?php echo lang('common_delete'); ?></a>
											</td>
											<td><a href="javascript:void(0);" class="add_delivery_rate"><?php echo lang('config_add_rate'); ?></a></td>
											<td><span class="ui-icon ui-icon-arrowthick-2-n-s"></span></td>
									</tr>
									
									<?php } ?>
									</tbody>
								</table>
								
								<a href="javascript:void(0);" class="add_shipping_provider"><?php echo lang('config_add_shipping_provider'); ?></a>
								</div>
							</div>
						</div>
						
						<div class="form-group no-padding-right" data-keyword="<?php echo H(lang('config_keyword_orders_deliveries')) ?>">	
							<?php echo form_label(lang('config_shipping_zones').':', '',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
								<div class="col-md-9 col-sm-9 col-lg-10">
									<div class="table-responsive">
										<table id="shipping_zones" class="table">
											<thead>
												<tr>
													<th><?php echo lang('common_name'); ?></th>
													<th><?php echo lang('common_zips').' ('.lang('config_support_regex'); ?>)</th>
													<th><?php echo lang('common_fee'); ?></th>
													<th><?php echo lang('config_tax_class'); ?></th>
													<th><?php echo lang('common_delete'); ?></th>
													<th><?php echo lang('config_sort'); ?></th>
												</tr>
											</thead>
									
											<tbody>
										
											<?php
											 foreach($shipping_zones->result_array() as $shipping_zone) { 
												 $zone_id = $shipping_zone['id'];
												 $zips_for_zone = array();
												 $zips_for_zone_str = '';
												 foreach($this->Zip->get_zips_for_zone($zone_id)->result_array() as $zip_row)
												 {
												 	$zips_for_zone[] = $zip_row['name'];
												 }
												 
												 
												 $zips_for_zone_str = implode('|',$zips_for_zone);
												?>
												<tr data-index="<?php echo H($zone_id); ?>">
													<td class="shipping_zone_name top" style="width: 10%; min-width:100px;">
														<input type="text" class="zones form-control" name="zones[<?php echo H($zone_id); ?>][name]" value="<?php echo H($shipping_zone['name']);?>" />
													</td>
													
													<td class="shipping_zone_zips top" style="width: 50%;">
														<input type="text" class="zones form-control" name="zones[<?php echo H($zone_id); ?>][zips]" value="<?php echo H($zips_for_zone_str);?>" />
													</td>
													
													<td class="shipping_zone_fee top" style="width: 10%; min-width:100px;">
														<input type="text" class="zones form-control" name="zones[<?php echo H($zone_id); ?>][fee]" value="<?php echo H(to_currency_no_money($shipping_zone['fee']));?>" />
													</td>
													
													<td class="shipping_zone_tax_group top" style="width: 10%; min-width:200px;">
														<select class="zones form-control" name="zones[<?php echo H($zone_id); ?>][tax_class_id]">
															<?php foreach($tax_groups as $tax_group) { ?>
																<option value="<?php echo $tax_group['val'] ?>" <?php echo $shipping_zone['tax_class_id'] == $tax_group['val'] ? 'selected="selected"' : '' ?>><?php echo $tax_group['text'] ?></option>
															<?php } ?>
														</select>
													</td>
													
													<td style="width: 10%;">
														<a class="delete_zone"><?php echo lang('common_delete'); ?></a>
													</td>
													
													<td style="width: 10%;"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span></td>
											</tr>
									
											<?php } //end shipping zones ?>
											</tbody>
										</table>
								
										<a href="javascript:void(0);" class="add_shipping_zone"><?php echo lang('config_add_shipping_zone'); ?></a>
										</div>
									</div>
								</div>
					
				</div><!-- end panel-body -->
			</div><!-- end panel-->
		</div><!-- end col -->
		
		<!-- Sales -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_sales_info'))  ?>
				</div>
				<div class="panel-body">
								
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_prefix').':', 'sale_prefix',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label  required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
							'name'=>'sale_prefix',
							'id'=>'sale_prefix',
							'value'=>$this->config->item('sale_prefix')));?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_id_to_show_on_sale_interface').':', 'id_to_show_on_sale_interface',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label  required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('id_to_show_on_sale_interface', array(
							'number'  => lang('common_item_number_expanded'),
							'product_id'    => lang('common_product_id'),
							'id'   => lang('common_item_id')
							),
							$this->config->item('id_to_show_on_sale_interface'), 'class="form-control" id="id_to_show_on_sale_interface"')
							?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_disabled_fixed_discounts').':', 'disabled_fixed_discounts',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disabled_fixed_discounts',
							'id'=>'disabled_fixed_discounts',
							'value'=>'1',
							'checked'=>$this->config->item('disabled_fixed_discounts')));?>
							<label for="disabled_fixed_discounts"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_scan_and_set_sales').':', 'scan_and_set_sales',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'scan_and_set_sales',
							'id'=>'scan_and_set_sales',
							'value'=>'1',
							'checked'=>$this->config->item('scan_and_set_sales')));?>
							<label for="scan_and_set_sales"><span></span></label>
						</div>
					</div>
				
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_scan_and_set_recv').':', 'scan_and_set_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'scan_and_set_recv',
							'id'=>'scan_and_set_recv',
							'value'=>'1',
							'checked'=>$this->config->item('scan_and_set_recv')));?>
							<label for="scan_and_set_recv"><span></span></label>
						</div>
					</div>									
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_damaged_reasons').':', 'damaged_reasons',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'damaged_reasons',
							'id'=>'damaged_reasons',
							'size'=> 40,
							'value'=>$this->config->item('damaged_reasons')));?>
						</div>
						
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_capture_internal_notes_during_sale').':', 'capture_internal_notes_during_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'capture_internal_notes_during_sale',
							'id'=>'capture_internal_notes_during_sale',
							'value'=>'capture_internal_notes_during_sale',
							'checked'=>$this->config->item('capture_internal_notes_during_sale')));?>
							<label for="capture_internal_notes_during_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_capture_sig_for_all_payments').':', 'capture_sig_for_all_payments',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'capture_sig_for_all_payments',
							'id'=>'capture_sig_for_all_payments',
							'value'=>'capture_sig_for_all_payments',
							'checked'=>$this->config->item('capture_sig_for_all_payments')));?>
							<label for="capture_sig_for_all_payments"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_number_of_recent_sales').':', 'number_of_recent_sales',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">

						<?php echo form_dropdown('number_of_recent_sales', 
						 array(
							'10'=>'10',
							'20'=>'20',
							'50'=>'50',
							'100'=>'100',
							'200'=>'200',
							'500'=>'500'
							), $this->config->item('number_of_recent_sales') ? $this->config->item('number_of_recent_sales') : '10', 'class="form-control" id="number_of_recent_sales"');
							?>

						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_hide_customer_recent_sales').':', 'hide_customer_recent_sales',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_customer_recent_sales',
							'id'=>'hide_customer_recent_sales',
							'value'=>'hide_customer_recent_sales',
							'checked'=>$this->config->item('hide_customer_recent_sales')));?>
							<label for="hide_customer_recent_sales"><span></span></label>
						</div>
					</div>
																				
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_enable_customer_quick_add').':', 'enable_customer_quick_add',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'enable_customer_quick_add',
							'id'=>'enable_customer_quick_add',
							'value'=>'enable_customer_quick_add',
							'checked'=>$this->config->item('enable_customer_quick_add')));?>
							<label for="enable_customer_quick_add"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_enable_supplier_quick_add').':', 'enable_supplier_quick_add',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'enable_supplier_quick_add',
							'id'=>'enable_supplier_quick_add',
							'value'=>'enable_supplier_quick_add',
							'checked'=>$this->config->item('enable_supplier_quick_add')));?>
							<label for="enable_supplier_quick_add"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_collapse_sales_ui_by_default').':', 'collapse_sales_ui_by_default',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'collapse_sales_ui_by_default',
							'id'=>'collapse_sales_ui_by_default',
							'value'=>'collapse_sales_ui_by_default',
							'checked'=>$this->config->item('collapse_sales_ui_by_default')));?>
							<label for="collapse_sales_ui_by_default"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_collapse_recv_ui_by_default').':', 'collapse_recv_ui_by_default',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'collapse_recv_ui_by_default',
							'id'=>'collapse_recv_ui_by_default',
							'value'=>'collapse_recv_ui_by_default',
							'checked'=>$this->config->item('collapse_recv_ui_by_default')));?>
							<label for="collapse_recv_ui_by_default"><span></span></label>
						</div>
					</div>				
							
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('disable_confirmation_sale').':', 'disable_confirmation_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_confirmation_sale',
							'id'=>'disable_confirmation_sale',
							'value'=>'disable_confirmation_sale',
							'checked'=>$this->config->item('disable_confirmation_sale')));?>
							<label for="disable_confirmation_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_disable_confirm_recv').':', 'disable_confirm_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_confirm_recv',
							'id'=>'disable_confirm_recv',
							'value'=>'disable_confirm_recv',
							'checked'=>$this->config->item('disable_confirm_recv')));?>
							<label for="disable_confirm_recv"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('disable_quick_complete_sale').':', 'disable_quick_complete_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_quick_complete_sale',
							'id'=>'disable_quick_complete_sale',
							'value'=>'disable_quick_complete_sale',
							'checked'=>$this->config->item('disable_quick_complete_sale')));?>
							<label for="disable_quick_complete_sale"><span></span></label>
						</div>
					</div>					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_automatically_calculate_average_cost_price_from_receivings').':', 'calculate_average_cost_price_from_receivings',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'calculate_average_cost_price_from_receivings',
							'id'=>'calculate_average_cost_price_from_receivings',
							'value'=>'1',
							'checked'=>$this->config->item('calculate_average_cost_price_from_receivings')));?>
							<label for="calculate_average_cost_price_from_receivings"><span></span></label>
						</div>
					</div>
					
					<div id="average_cost_price_from_receivings_methods">
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_averaging_method').':', 'averaging_method',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
								<?php echo form_dropdown('averaging_method', array('moving_average' => lang('config_moving_average'), 'historical_average' => lang('config_historical_average'), 'dont_average' => lang('config_dont_average_use_current_recv_price')), $this->config->item('averaging_method'),'class="form-control" id="averaging_method"'); ?>
							</div>
						</div>
					</div>
					
					<div id="update_cost_price_on_transfer_container">
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
							<?php echo form_label(lang('config_update_cost_price_on_transfer').':', 'update_cost_price_on_transfer',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'update_cost_price_on_transfer',
								'id'=>'update_cost_price_on_transfer',
								'value'=>'1',
								'checked'=>$this->config->item('update_cost_price_on_transfer')));?>
								<label for="update_cost_price_on_transfer"><span></span></label>
							</div>
						</div>
						
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_require_supplier_recv').':', 'require_supplier_for_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'require_supplier_for_recv',
							'id'=>'require_supplier_for_recv',
							'value'=>'1',
							'checked'=>$this->config->item('require_supplier_for_recv')));?>
							<label for="require_supplier_for_recv"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_track_shipping_cost_for_receivings').':', 'track_shipping_cost_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'track_shipping_cost_recv',
							'id'=>'track_shipping_cost_recv',
							'value'=>'1',
							'checked'=>$this->config->item('track_shipping_cost_recv')));?>
							<label for="track_shipping_cost_recv"><span></span></label>
						</div>
					</div>
													
					<?php if ($this->config->item('always_use_average_cost_method')) { ?>
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_always_use_average_cost_method').':', 'always_use_average_cost_method',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'always_use_average_cost_method',
							'id'=>'always_use_average_cost_method',
							'value'=>'1',
							'checked'=>$this->config->item('always_use_average_cost_method')));?>
							<label for="always_use_average_cost_method"><span></span></label>
						</div>
					</div>
					<?php } ?>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_hide_suspended_recv_in_reports').':', 'hide_suspended_recv_in_reports',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_suspended_recv_in_reports',
							'id'=>'hide_suspended_recv_in_reports',
							'value'=>'1',
							'checked'=>$this->config->item('hide_suspended_recv_in_reports')));?>
							<label for="hide_suspended_recv_in_reports"><span></span></label>
						</div>
					</div>
					<?php
					$track_payment_types = $this->config->item('track_payment_types') ? unserialize($this->config->item('track_payment_types')) : array();
					?>
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_track_cash').':', 'track_cash',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'track_payment_types[]',
							'id'=>'track_cash',
							'value'=>'common_cash',
							'checked'=>in_array('common_cash',$track_payment_types)));?>
							<label for="track_cash"><span></span></label>
						</div>
					</div>
					<!--Caja inicial-->
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_amount_of_cash_to_be_left_in_drawer_at_closing').':', 'amount_of_cash_to_be_left_in_drawer_at_closing',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
							'name'=>'amount_of_cash_to_be_left_in_drawer_at_closing',
							'id'=>'amount_of_cash_to_be_left_in_drawer_at_closing',
							'value'=>$this->config->item('amount_of_cash_to_be_left_in_drawer_at_closing')));?>
						</div>
					</div>	
					
					<!--Alertas de caja-->
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_cash_alert_high').':', 'cash_alert_high',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
							'name'=>'cash_alert_high',
							'id'=>'cash_alert_high',
							'value'=>$this->config->item('cash_alert_high')));?>
						</div>
					</div>	

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_cash_alert_low').':', 'cash_alert_low',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
							'name'=>'cash_alert_low',
							'id'=>'cash_alert_low',
							'value'=>$this->config->item('cash_alert_low')));?>
						</div>
					</div>	
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_track_checks_in_register').':', 'track_check',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'track_payment_types[]',
							'id'=>'track_check',
							'value'=>'common_check',
							'checked'=>in_array('common_check',$track_payment_types)));?>
							<label for="track_check"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_track_giftcards_in_register').':', 'track_giftcard',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'track_payment_types[]',
							'id'=>'track_giftcard',
							'value'=>'common_giftcard',
							'checked'=>in_array('common_giftcard',$track_payment_types)));?>
							<label for="track_giftcard"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_track_debit_cards_in_register').':', 'track_debit_cards',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'track_payment_types[]',
							'id'=>'track_debit_cards',
							'value'=>'common_debit',
							'checked'=>in_array('common_debit',$track_payment_types)));?>
							<label for="track_debit_cards"><span></span></label>
						</div>
					</div>								
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_track_credit_cards_in_register').':', 'track_credit_cards',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'track_payment_types[]',
							'id'=>'track_credit_cards',
							'value'=> 'common_credit',
							'checked'=>in_array('common_credit',$track_payment_types)));?>
							<label for="track_credit_cards"><span></span></label>
						</div>
					</div>
															<script type='text/javascript'>
										$(document).ready(function() {
											var submitting = false;
											$('#config_form').validate({
												submitHandler: function(form) {
													if (submitting) return;
													submitting = true;
													$(form).ajaxSubmit({
														success: function(response) {
															// Manejar la respuesta del servidor aquí
															submitting = false;
														},
														dataType: 'json'
													});
												},
												errorClass: "text-danger",
												errorElement: "span",
												highlight: function(element, errorClass, validClass) {
													$(element).parents('.form-group').removeClass('has-success').addClass('has-error');
												},
												unhighlight: function(element, errorClass, validClass) {
													$(element).parents('.form-group').removeClass('has-error').addClass('has-success');
												},
												rules: {
													company: "required",
													sale_prefix: "required",
													return_policy: {
														required: true
													},
													item_id_auto_increment: {
														max: 999999999
													},
													item_kit_id_auto_increment: {
														max: 999999999
													},
													sale_id_auto_increment: {
														max: 999999999
													},
													receiving_id_auto_increment: {
														max: 999999999
													}
												},
												messages: {
													company: "El nombre de la empresa es obligatorio.",
													sale_prefix: "El prefijo de la venta es obligatorio.",
													return_policy: {
														required: "La política de devoluciones es obligatoria."
													}
												}
											});
										});
										</script>					
					<?php
					foreach($this->Appconfig->get_additional_payment_types() as $additional_payment_type)
					{
					?>
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_track').' '.$additional_payment_type.' '.lang('common_in_register').':', 'track_'.$additional_payment_type,array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'track_payment_types[]',
							'id'=>'track_'.$additional_payment_type,
							'value'=> $additional_payment_type,
							'checked'=>in_array($additional_payment_type,$track_payment_types)));?>
							<label for="track_<?php echo $additional_payment_type;?>"><span></span></label>
						</div>
					</div>
					
					<?php
					}
					?>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_do_not_show_closing').':', 'do_not_show_closing',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_show_closing',
							'id'=>'do_not_show_closing',
							'value'=>'1',
							'checked'=>$this->config->item('do_not_show_closing')));?>
							<label for="do_not_show_closing"><span></span></label>
						</div>
					</div>
					
	
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_hide_available_giftcards').':', 'hide_available_giftcards',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_available_giftcards',
							'id'=>'hide_available_giftcards',
							'value'=>'1',
							'checked'=>$this->config->item('hide_available_giftcards')));?>
							<label for="hide_available_giftcards"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_disable_giftcard_detection').':', 'disable_giftcard_detection',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_giftcard_detection',
							'id'=>'disable_giftcard_detection',
							'value'=>'1',
							'checked'=>$this->config->item('disable_giftcard_detection')));?>
							<label for="disable_giftcard_detection"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_always_show_item_grid').':', 'always_show_item_grid',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'always_show_item_grid',
							'id'=>'always_show_item_grid',
							'value'=>'1',
							'checked'=>$this->config->item('always_show_item_grid')));?>
							<label for="always_show_item_grid"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_hide_images_in_grid').':', 'hide_images_in_grid',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_images_in_grid',
							'id'=>'hide_images_in_grid',
							'value'=>'1',
							'checked'=>$this->config->item('hide_images_in_grid')));?>
							<label for="hide_images_in_grid"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_quick_variation_grid').':', 'quick_variation_grid',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'quick_variation_grid',
							'id'=>'quick_variation_grid',
							'value'=>'1',
							'checked'=>$this->config->item('quick_variation_grid')));?>
							<label for="quick_variation_grid"><span></span></label>
						</div>
					</div>
					
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_hide_out_of_stock_grid').':', 'hide_out_of_stock_grid',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_out_of_stock_grid',
							'id'=>'hide_out_of_stock_grid',
							'value'=>'1',
							'checked'=>$this->config->item('hide_out_of_stock_grid')));?>
							<label for="hide_out_of_stock_grid"><span></span></label>
						</div>
					</div>
										
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_default_type_for_grid').':', 'default_type_for_grid',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('default_type_for_grid', array(
								'categories'  => lang('reports_categories'), 
								'tags'  => lang('common_tags'),
								'favorites'  => lang('common_favorite'),
							),
							$this->config->item('default_type_for_grid'), 'class="form-control" id="default_type_for_grid"');
							?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_require_customer_for_sale').':', 'require_customer_for_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'require_customer_for_sale',
							'id'=>'require_customer_for_sale',
							'value'=>'1',
							'checked'=>$this->config->item('require_customer_for_sale')));?>
							<label for="require_customer_for_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_select_sales_person_during_sale').':', 'select_sales_person_during_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'select_sales_person_during_sale',
							'id'=>'select_sales_person_during_sale',
							'value'=>'1',
							'checked'=>$this->config->item('select_sales_person_during_sale')));?>
							<label for="select_sales_person_during_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_default_sales_person').':', 'default_sales_person',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10"> 
						<?php echo form_dropdown('default_sales_person', array('logged_in_employee' => lang('common_logged_in_employee'), 'not_set' => lang('common_not_set')), $this->config->item('default_sales_person'),'class="form-control" id="default_sales_person"'); ?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_commission_default_rate'). ':', 'commission_default_rate',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<div class="input-group">
								<?php echo form_input(array(
								'name'=>'commission_default_rate',
								'id'=>'commission_default_rate',
								'class'=>'form-control',
								'value'=>$this->config->item('commission_default_rate')));?>
							  <span class="input-group-addon">%</span>
							</div>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('common_commission_percent_calculation').': ', 'commission_percent_type',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('commission_percent_type', array(
							'selling_price'  => lang('common_unit_price'),
							'profit'    => lang('common_profit'),
							),
							$this->config->item('commission_percent_type'),
							array('id' => 'commission_percent_type', 'class' => 'form-control'))
							?>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_disable_sale_notifications').':', 'disable_sale_notifications',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_sale_notifications',
							'id'=>'disable_sale_notifications',
							'value'=>'1',
							'checked'=>$this->config->item('disable_sale_notifications')));?>
							<label for="disable_sale_notifications"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_confirm_error_messages_modal').':', 'confirm_error_adding_item',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'confirm_error_adding_item',
							'id'=>'confirm_error_adding_item',
							'value'=>'1',
							'checked'=>$this->config->item('confirm_error_adding_item')));?>
							<label for="confirm_error_adding_item"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_change_sale_date_for_new_sale').':', 'change_sale_date_for_new_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'change_sale_date_for_new_sale',
							'id'=>'change_sale_date_for_new_sale',
							'value'=>'1',
							'checked'=>$this->config->item('change_sale_date_for_new_sale')));?>
							<label for="change_sale_date_for_new_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_do_not_group_same_items').':', 'do_not_group_same_items',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_group_same_items',
							'id'=>'do_not_group_same_items',
							'value'=>'1',
							'checked'=>$this->config->item('do_not_group_same_items')));?>
							<label for="do_not_group_same_items"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
						<?php echo form_label(lang('config_do_not_allow_below_cost').':', 'do_not_allow_below_cost',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_allow_below_cost',
							'id'=>'do_not_allow_below_cost',
							'value'=>'1',
							'checked'=>$this->config->item('do_not_allow_below_cost')));?>
							<label for="do_not_allow_below_cost"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_do_not_allow_out_of_stock_items_to_be_sold').':', 'do_not_allow_out_of_stock_items_to_be_sold',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_allow_out_of_stock_items_to_be_sold',
							'id'=>'do_not_allow_out_of_stock_items_to_be_sold',
							'value'=>'do_not_allow_out_of_stock_items_to_be_sold',
							'checked'=>$this->config->item('do_not_allow_out_of_stock_items_to_be_sold')));?>
							<label for="do_not_allow_out_of_stock_items_to_be_sold"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_do_not_allow_items_to_go_out_of_stock_when_transfering').':', 'do_not_allow_items_to_go_out_of_stock_when_transfering',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_allow_items_to_go_out_of_stock_when_transfering',
							'id'=>'do_not_allow_items_to_go_out_of_stock_when_transfering',
							'value'=>'do_not_allow_items_to_go_out_of_stock_when_transfering',
							'checked'=>$this->config->item('do_not_allow_items_to_go_out_of_stock_when_transfering')));?>
							<label for="do_not_allow_items_to_go_out_of_stock_when_transfering"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_do_not_allow_item_with_variations_to_be_sold_without_selecting_variation').':', 'do_not_allow_item_with_variations_to_be_sold_without_selecting_variation',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_allow_item_with_variations_to_be_sold_without_selecting_variation',
							'id'=>'do_not_allow_item_with_variations_to_be_sold_without_selecting_variation',
							'value'=>'do_not_allow_item_with_variations_to_be_sold_without_selecting_variation',
							'checked'=>$this->config->item('do_not_allow_item_with_variations_to_be_sold_without_selecting_variation')));?>
							<label for="do_not_allow_item_with_variations_to_be_sold_without_selecting_variation"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_edit_item_price_if_zero_after_adding').':', 'edit_item_price_if_zero_after_adding',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'edit_item_price_if_zero_after_adding',
							'id'=>'edit_item_price_if_zero_after_adding',
							'value'=>'edit_item_price_if_zero_after_adding',
							'checked'=>$this->config->item('edit_item_price_if_zero_after_adding')));?>
							<label for="edit_item_price_if_zero_after_adding"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_sales')) ?>">	
					<?php echo form_label(lang('config_remind_customer_facing_display').':', 'remind_customer_facing_display',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'remind_customer_facing_display',
							'id'=>'remind_customer_facing_display',
							'value'=>'remind_customer_facing_display',
							'checked'=>$this->config->item('remind_customer_facing_display')));?>
							<label for="remind_customer_facing_display"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" >	
					<?php echo form_label(lang('config_do_not_allow_sales_with_zero_value').':', 'do_not_allow_sales_with_zero_value',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_allow_sales_with_zero_value',
							'id'=>'do_not_allow_sales_with_zero_value',
							'value'=>'do_not_allow_sales_with_zero_value',
							'checked'=>$this->config->item('do_not_allow_sales_with_zero_value')));?>
							<label for="do_not_allow_sales_with_zero_value"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" >	
					<?php echo form_label(lang('config_prompt_amount_for_cash_sale').':', 'prompt_amount_for_cash_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'prompt_amount_for_cash_sale',
							'id'=>'prompt_amount_for_cash_sale',
							'value'=>'prompt_amount_for_cash_sale',
							'checked'=>$this->config->item('prompt_amount_for_cash_sale')));?>
							<label for="prompt_amount_for_cash_sale"><span></span></label>
						</div>
					</div>

				</div>
			</div>
		</div>
					
		<!-- Suspended Sales/Layaways -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_suspended_sales_layaways_info'))  ?>
				</div>
				<div class="panel-body">
					
					
					<div class="form-group no-padding-right" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">	
					<?php echo form_label(lang('config_additional_suspend_types').':', '',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-md-9 col-sm-9 col-lg-10">
							<div class="table-responsive">
								<table id="sale_types" class="table">
									<thead>
										<tr>
										<th><?php echo lang('config_sort'); ?></th>
										<th><?php echo lang('common_id'); ?></th>
										<th><?php echo lang('common_suspended_sale_type'); ?></th>
										<th><?php echo lang('config_remove_quantity_suspending'); ?></th>
										<th><?php echo lang('common_delete'); ?></th>
										</tr>
									</thead>
									
									<tbody>
									<?php foreach($sale_types->result() as $sale_type) { ?>
										<tr>
											<td><span class="ui-icon ui-icon-arrowthick-2-n-s"></span></td>
											<td><?php echo $sale_type->id; ?></td>
											<td><input type="text" data-index="<?php echo $sale_type->id; ?>" class="sale_types_to_edit form-control" name="sale_types_to_edit[<?php echo $sale_type->id; ?>][name]" value="<?php echo H($sale_type->name); ?>" /></td>
											
											<td class="text-center">
											<?php echo form_checkbox(array(
												'name'=>'sale_types_to_edit['.$sale_type->id.'][remove_quantity]',
												'id'=>'remove_quantity_'.$sale_type->id,
												'value'=>'1',
												'data-index' => $sale_type->id,
 												'checked'=>$sale_type->remove_quantity));?>
												<label for="remove_quantity_<?php echo $sale_type->id;?>"><span></span></label>
											</td>
											
											<td><a class="delete_sale_type" href="javascript:void(0);" data-sale-type-id='<?php echo $sale_type->id; ?>'><?php echo lang('common_delete'); ?></a></td>
									</tr>
									<?php } ?>
									</tbody>
								</table>
								
								<a href="javascript:void(0);" id="add_sale_type"><?php echo lang('config_add_suspended_sale_type'); ?></a>
								</div>
							</div>
						</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">	
						<?php echo form_label(lang('config_require_customer_for_suspended_sale').':', 'require_customer_for_suspended_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'require_customer_for_suspended_sale',
							'id'=>'require_customer_for_suspended_sale',
							'value'=>'1',
							'checked'=>$this->config->item('require_customer_for_suspended_sale')));?>
							<label for="require_customer_for_suspended_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">	
						<?php echo form_label(lang('config_dont_recalculate_cost_price_when_unsuspending_estimates').':', 'dont_recalculate_cost_price_when_unsuspending_estimates',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'dont_recalculate_cost_price_when_unsuspending_estimates',
							'id'=>'dont_recalculate_cost_price_when_unsuspending_estimates',
							'value'=>'1',
							'checked'=>$this->config->item('dont_recalculate_cost_price_when_unsuspending_estimates')));?>
							<label for="dont_recalculate_cost_price_when_unsuspending_estimates"><span></span></label>
						</div>
					</div>									
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">
						<?php echo form_label(lang('config_user_configured_layaway_name').':', 'user_configured_layaway_name',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
							'name'=>'user_configured_layaway_name',
							'id'=>'user_configured_layaway_name',
							'value'=>$this->config->item('user_configured_layaway_name')));?>
						</div>
					</div>
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">	
						<?php echo form_label(lang('common_hide_layaways_sales_in_reports').':', 'hide_layaways_sales_in_reports',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_layaways_sales_in_reports',
							'id'=>'hide_layaways_sales_in_reports',
							'value'=>'1',
							'checked'=>$this->config->item('hide_layaways_sales_in_reports')));?>
							<label for="hide_layaways_sales_in_reports"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">	
						<?php echo form_label(lang('config_change_sale_date_when_suspending').':', 'change_sale_date_when_suspending',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'change_sale_date_when_suspending',
							'id'=>'change_sale_date_when_suspending',
							'value'=>'1',
							'checked'=>$this->config->item('change_sale_date_when_suspending')));?>
							<label for="change_sale_date_when_suspending"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">	
						<?php echo form_label(lang('config_change_sale_date_when_completing_suspended_sale').':', 'change_sale_date_when_completing_suspended_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'change_sale_date_when_completing_suspended_sale',
							'id'=>'change_sale_date_when_completing_suspended_sale',
							'value'=>'1',
							'checked'=>$this->config->item('change_sale_date_when_completing_suspended_sale')));?>
							<label for="change_sale_date_when_completing_suspended_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_suspended_layaways')) ?>">	
						<?php echo form_label(lang('config_show_receipt_after_suspending_sale').':', 'show_receipt_after_suspending_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_receipt_after_suspending_sale',
							'id'=>'show_receipt_after_suspending_sale',
							'value'=>'1',
							'checked'=>$this->config->item('show_receipt_after_suspending_sale')));?>
							<label for="show_receipt_after_suspending_sale"><span></span></label>
						</div>
					</div>					
					
				</div>
			</div>
		</div>
		
		<!-- Receipt -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_receipt_info'))  ?>
				</div>
				<div class="panel-body">
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_override_receipt_title').':', 'override_receipt_title',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
							'name'=>'override_receipt_title',
							'id'=>'override_receipt_title',
							'value'=>$this->config->item('override_receipt_title')));?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_emailed_receipt_subject').':', 'emailed_receipt_subject',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'form-control form-inps',
							'name'=>'emailed_receipt_subject',
							'id'=>'emailed_receipt_subject',
							'placeholder' => lang('sales_receipt'),
							'value'=>$this->config->item('emailed_receipt_subject')));?>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_item_id_on_receipt').':', 'show_item_id_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_item_id_on_receipt',
							'id'=>'show_item_id_on_receipt',
							'value'=>'show_item_id_on_receipt',
							'checked'=>$this->config->item('show_item_id_on_receipt')));?>
							<label for="show_item_id_on_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_person_id_on_receipt').':', 'show_person_id_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_person_id_on_receipt',
							'id'=>'show_person_id_on_receipt',
							'value'=>'1',
							'checked'=>$this->config->item('show_person_id_on_receipt')));?>
							<label for="show_person_id_on_receipt"><span></span></label>
						</div>
					</div>
					

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_tags_on_fulfillment_sheet').':', 'show_tags_on_fulfillment_sheet',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_tags_on_fulfillment_sheet',
							'id'=>'show_tags_on_fulfillment_sheet',
							'value'=>'show_tags_on_fulfillment_sheet',
							'checked'=>$this->config->item('show_tags_on_fulfillment_sheet')));?>
							<label for="show_tags_on_fulfillment_sheet"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_total_on_fulfillment').':', 'show_total_on_fulfillment',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_total_on_fulfillment',
							'id'=>'show_total_on_fulfillment',
							'value'=>'show_total_on_fulfillment',
							'checked'=>$this->config->item('show_total_on_fulfillment')));?>
							<label for="show_total_on_fulfillment"><span></span></label>
						</div>
					</div>
					
					
					
					
					

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_taxes_summary_on_receipt').':', 'taxes_summary_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'taxes_summary_on_receipt',
							'id'=>'taxes_summary_on_receipt',
							'value'=>'taxes_summary_on_receipt',
							'checked'=>$this->config->item('taxes_summary_on_receipt')));?>
							<label for="taxes_summary_on_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_taxes_summary_details_on_receipt').':', 'taxes_summary_details_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'taxes_summary_details_on_receipt',
							'id'=>'taxes_summary_details_on_receipt',
							'value'=>'taxes_summary_details_on_receipt',
							'checked'=>$this->config->item('taxes_summary_details_on_receipt')));?>
							<label for="taxes_summary_details_on_receipt"><span></span></label>
						</div>
					</div>
					
					

					
					<div class="form-group">	
					<?php echo form_label(lang('config_second_language').':', 'second_language',array('class'=>'col-sm-3 col-md-3 col-lg-2 col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('second_language', array(
							''  => lang('common_none'),
							'english'  => 'English',
							'spanish'   => 'Español', 
							),
							$this->config->item('second_language'), 'class="form-control" id="second_language"');
							?>
						</div>
					</div>
					
										
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_uppercase_receipts').':', 'uppercase_receipts',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'uppercase_receipts',
							'id'=>'uppercase_receipts',
							'value'=>'uppercase_receipts',
							'checked'=>$this->config->item('uppercase_receipts')));?>
							<label for="uppercase_receipts"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_item_kit_items_on_receipt').':', 'show_item_kit_items_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_item_kit_items_on_receipt',
							'id'=>'show_item_kit_items_on_receipt',
							'value'=>'show_item_kit_items_on_receipt',
							'checked'=>$this->config->item('show_item_kit_items_on_receipt')));?>
							<label for="show_item_kit_items_on_receipt"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_total_discount_on_receipt').':', 'show_total_discount_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_total_discount_on_receipt',
							'id'=>'show_total_discount_on_receipt',
							'value'=>'show_total_discount_on_receipt',
							'checked'=>$this->config->item('show_total_discount_on_receipt')));?>
							<label for="show_total_discount_on_receipt"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_prices_on_fill_sheet').':', 'hide_prices_on_fill_sheet',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_prices_on_fill_sheet',
							'id'=>'hide_prices_on_fill_sheet',
							'value'=>'hide_prices_on_fill_sheet',
							'checked'=>$this->config->item('hide_prices_on_fill_sheet')));?>
							<label for="hide_prices_on_fill_sheet"><span></span></label>
						</div>
					</div>
					

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_item_id_on_recv_receipt').':', 'show_item_id_on_recv_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_item_id_on_recv_receipt',
							'id'=>'show_item_id_on_recv_receipt',
							'value'=>'show_item_id_on_recv_receipt',
							'checked'=>$this->config->item('show_item_id_on_recv_receipt')));?>
							<label for="show_item_id_on_recv_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_all_prices_on_recv').':', 'hide_all_prices_on_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_all_prices_on_recv',
							'id'=>'hide_all_prices_on_recv',
							'value'=>'hide_all_prices_on_recv',
							'checked'=>$this->config->item('hide_all_prices_on_recv')));?>
							<label for="hide_all_prices_on_recv"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_number_of_decimals_for_quantity_on_receipt').':', 'number_of_decimals_for_quantity_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('number_of_decimals_for_quantity_on_receipt', array(
		 							''  => lang('config_let_system_decide'),
		 							'0'    => '0',
		 							'1'    => '1',
		 							'2'    => '2',
		 							'3'    => '3',
		 							'4'    => '4',
		 							'5'    => '5',
		 							'6'    => '6',
		 							'7'    => '7',
		 							'8'    => '8',
		 							'9'    => '9',
		 							'10'    => '10',
								),$this->config->item('number_of_decimals_for_quantity_on_receipt')
		 							 , 'class="form-control" id="number_of_decimals_for_quantity_on_receipt"');
								?>
						</div>
					</div>
					
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('common_indicate_taxable_on_receipt').':', 'indicate_taxable_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'indicate_taxable_on_receipt',
							'id'=>'indicate_taxable_on_receipt',
							'value'=>'indicate_taxable_on_receipt',
							'checked'=>$this->config->item('indicate_taxable_on_receipt')));?>
							<label for="indicate_taxable_on_receipt"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_tax_per_item_on_receipt').':', 'show_tax_per_item_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_tax_per_item_on_receipt',
							'id'=>'show_tax_per_item_on_receipt',
							'value'=>'show_tax_per_item_on_receipt',
							'checked'=>$this->config->item('show_tax_per_item_on_receipt')));?>
							<label for="show_tax_per_item_on_receipt"><span></span></label>
						</div>
					</div>
					
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_desc_on_receipt').':', 'hide_desc_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_desc_on_receipt',
							'id'=>'hide_desc_on_receipt',
							'value'=>'hide_desc_on_receipt',
							'checked'=>$this->config->item('hide_desc_on_receipt')));?>
							<label for="hide_desc_on_receipt"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_merchant_id_from_receipt').':', 'hide_merchant_id_from_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_merchant_id_from_receipt',
							'id'=>'hide_merchant_id_from_receipt',
							'value'=>'hide_merchant_id_from_receipt',
							'checked'=>$this->config->item('hide_merchant_id_from_receipt')));?>
							<label for="hide_merchant_id_from_receipt"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_desc_emailed_receipts').':', 'hide_desc_emailed_receipts',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_desc_emailed_receipts',
							'id'=>'hide_desc_emailed_receipts',
							'value'=>'hide_desc_emailed_receipts',
							'checked'=>$this->config->item('hide_desc_emailed_receipts')));?>
							<label for="hide_desc_emailed_receipts"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_description_on_sales_and_recv').':', 'hide_description_on_sales_and_recv',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_description_on_sales_and_recv',
							'id'=>'hide_description_on_sales_and_recv',
							'value'=>'hide_description_on_sales_and_recv',
							'checked'=>$this->config->item('hide_description_on_sales_and_recv')));?>
							<label for="hide_description_on_sales_and_recv"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_orig_price_if_marked_down_on_receipt').':', 'show_orig_price_if_marked_down_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_orig_price_if_marked_down_on_receipt',
							'id'=>'show_orig_price_if_marked_down_on_receipt',
							'value'=>'show_orig_price_if_marked_down_on_receipt',
							'checked'=>$this->config->item('show_orig_price_if_marked_down_on_receipt')));?>
							<label for="show_orig_price_if_marked_down_on_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_print_after_sale').':', 'print_after_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'print_after_sale',
							'id'=>'print_after_sale',
							'value'=>'print_after_sale',
							'checked'=>$this->config->item('print_after_sale')));?>
							<label for="print_after_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_wide_printer_receipt_format').':', 'wide_printer_receipt_format',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'wide_printer_receipt_format',
							'id'=>'wide_printer_receipt_format',
							'value'=>'wide_printer_receipt_format',
							'checked'=>$this->config->item('wide_printer_receipt_format')));?>
							<label for="wide_printer_receipt_format"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_print_after_receiving').':', 'print_after_receiving',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'print_after_receiving',
							'id'=>'print_after_receiving',
							'value'=>'print_after_receiving',
							'checked'=>$this->config->item('print_after_receiving')));?>
							<label for="print_after_receiving"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_signature').':', 'hide_signature',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_signature',
							'id'=>'hide_signature',
							'value'=>'hide_signature',
							'checked'=>$this->config->item('hide_signature')));?>
							<label for="hide_signature"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_auto_capture_signature').':', 'auto_capture_signature',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'auto_capture_signature',
							'id'=>'auto_capture_signature',
							'value'=>'auto_capture_signature',
							'checked'=>$this->config->item('auto_capture_signature')));?>
							<label for="auto_capture_signature"><span></span></label>
						</div>
					</div>
					
												
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_remove_customer_name_from_receipt').':', 'remove_customer_name_from_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'remove_customer_name_from_receipt',
							'id'=>'remove_customer_name_from_receipt',
							'value'=>'remove_customer_name_from_receipt',
							'checked'=>$this->config->item('remove_customer_name_from_receipt')));?>
						<label for="remove_customer_name_from_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>"> 
					  <?php echo form_label(lang('config_remove_employee_from_receipt').':', 'remove_employee_from_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
					  <div class="col-sm-9 col-md-9 col-lg-10">
					  <?php echo form_checkbox(array(
					          'name'=>'remove_employee_from_receipt',
					          'id'=>'remove_employee_from_receipt',
					          'value'=>'remove_employee_from_receipt',
					          'checked'=>$this->config->item('remove_employee_from_receipt')));?>
					  <label for="remove_employee_from_receipt"><span></span></label>
					  </div>
					</div>		
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_remove_customer_company_from_receipt').':', 'remove_customer_company_from_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'remove_customer_company_from_receipt',
							'id'=>'remove_customer_company_from_receipt',
							'value'=>'remove_customer_company_from_receipt',
							'checked'=>$this->config->item('remove_customer_company_from_receipt')));?>
						<label for="remove_customer_company_from_receipt"><span></span></label>
						</div>
					</div>
								
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_remove_customer_contact_info_from_receipt').':', 'remove_customer_contact_info_from_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'remove_customer_contact_info_from_receipt',
							'id'=>'remove_customer_contact_info_from_receipt',
							'value'=>'remove_customer_contact_info_from_receipt',
							'checked'=>$this->config->item('remove_customer_contact_info_from_receipt')));?>
						<label for="remove_customer_contact_info_from_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_email_on_receipts').':', 'hide_email_on_receipts',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_email_on_receipts',
							'id'=>'hide_email_on_receipts',
							'value'=>'hide_email_on_receipts',
							'checked'=>$this->config->item('hide_email_on_receipts')));?>
						<label for="hide_email_on_receipts"><span></span></label>
						</div>
					</div>							
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_sort_receipt_column').':', 'sort_receipt_column',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('sort_receipt_column', array(
								''   => lang('common_none'),
								'name'   => lang('common_item_name'),
								'item_number'  => lang('common_item_number_expanded'),
								'product_id'    => lang('common_product_id'),
								),
								$this->config->item('sort_receipt_column'), 'class="form-control" id="sort_receipt_column"')
								?>
							
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_automatically_email_receipt').':', 'automatically_email_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'automatically_email_receipt',
							'id'=>'automatically_email_receipt',
							'value'=>'automatically_email_receipt',
							'checked'=>$this->config->item('automatically_email_receipt')));?>
							<label for="automatically_email_receipt"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_automatically_sms_receipt').':', 'automatically_sms_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'automatically_sms_receipt',
							'id'=>'automatically_sms_receipt',
							'value'=>'automatically_sms_receipt',
							'checked'=>$this->config->item('automatically_sms_receipt')));?>
							<label for="automatically_sms_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_automatically_print_duplicate_receipt_for_cc_transactions').':', 'automatically_print_duplicate_receipt_for_cc_transactions',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'automatically_print_duplicate_receipt_for_cc_transactions',
							'id'=>'automatically_print_duplicate_receipt_for_cc_transactions',
							'value'=>'automatically_print_duplicate_receipt_for_cc_transactions',
							'checked'=>$this->config->item('automatically_print_duplicate_receipt_for_cc_transactions')));?>
							<label for="automatically_print_duplicate_receipt_for_cc_transactions"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_always_print_duplicate_receipt_all').':', 'always_print_duplicate_receipt_all',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'always_print_duplicate_receipt_all',
							'id'=>'always_print_duplicate_receipt_all',
							'value'=>'always_print_duplicate_receipt_all',
							'checked'=>$this->config->item('always_print_duplicate_receipt_all')));?>
							<label for="always_print_duplicate_receipt_all"><span></span></label>
						</div>
					</div>
					
					
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_automatically_show_comments_on_receipt').':', 'automatically_show_comments_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'automatically_show_comments_on_receipt',
							'id'=>'automatically_show_comments_on_receipt',
							'value'=>'automatically_show_comments_on_receipt',
							'checked'=>$this->config->item('automatically_show_comments_on_receipt')));?>
							<label for="automatically_show_comments_on_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_barcode_on_sales_and_recv_receipt').':', 'hide_barcode_on_sales_and_recv_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_barcode_on_sales_and_recv_receipt',
							'id'=>'hide_barcode_on_sales_and_recv_receipt',
							'value'=>'1',
							'checked'=>$this->config->item('hide_barcode_on_sales_and_recv_receipt')));?>
							<label for="hide_barcode_on_sales_and_recv_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_group_all_taxes_on_receipt').':', 'group_all_taxes_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'group_all_taxes_on_receipt',
							'id'=>'group_all_taxes_on_receipt',
							'value'=>'1',
							'checked'=>$this->config->item('group_all_taxes_on_receipt')));?>
							<label for="group_all_taxes_on_receipt"><span></span></label>
						</div>
					</div>						
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_redirect_to_sale_or_recv_screen_after_printing_receipt').':', 'redirect_to_sale_or_recv_screen_after_printing_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'redirect_to_sale_or_recv_screen_after_printing_receipt',
							'id'=>'redirect_to_sale_or_recv_screen_after_printing_receipt',
							'value'=>'1',
							'checked'=>$this->config->item('redirect_to_sale_or_recv_screen_after_printing_receipt')));?>
							<label for="redirect_to_sale_or_recv_screen_after_printing_receipt"><span></span></label>
						</div>
					</div>
													
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_receipt_text_size').':', 'receipt_text_size',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('receipt_text_size', $receipt_text_size_options, $this->config->item('receipt_text_size'),'class="form-control" id="receipt_text_size"'); ?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_hide_store_account_balance_on_receipt').':', 'hide_store_account_balance_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_store_account_balance_on_receipt',
							'id'=>'hide_store_account_balance_on_receipt',
							'value'=>'1',
							'checked'=>$this->config->item('hide_store_account_balance_on_receipt')));?>
							<label for="hide_store_account_balance_on_receipt"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_round_cash_on_sales').':', 'round_cash_on_sales',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'round_cash_on_sales',
							'id'=>'round_cash_on_sales',
							'value'=>'round_cash_on_sales',
							'checked'=>$this->config->item('round_cash_on_sales')));?>
							<label for="round_cash_on_sales"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
					<?php echo form_label(lang('common_return_policy').':', 'return_policy',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_textarea(array(
							'name'=>'return_policy',
							'id'=>'return_policy',
							'class'=>'form-control text-area',
							'rows'=>'4',
							'cols'=>'30',
							'value'=>$this->config->item('return_policy')));?>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
					<?php echo form_label(lang('common_announcement_special').':', 'announcement_special',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_textarea(array(
							'name'=>'announcement_special',
							'id'=>'announcement_special',
							'class'=>'form-control text-area',
							'rows'=>'4',
							'cols'=>'30',
							'value'=>$this->config->item('announcement_special')));?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_enable_pdf_receipts').':', 'enable_pdf_receipts', array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'enable_pdf_receipts',
							'id'=>'enable_pdf_receipts',
							'value'=>'enable_pdf_receipts',
							'checked'=>$this->config->item('enable_pdf_receipts')));?>
							<label for="enable_pdf_receipts"><span></span></label>
						</div>
					</div>
										
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
					<?php echo form_label(lang('config_pdf_receipt_message').':', 'pdf_receipt_message',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_textarea(array(
							'name'=>'pdf_receipt_message',
							'id'=>'pdf_receipt_message',
							'class'=>'form-control text-area',
							'rows'=>'4',
							'cols'=>'30',
							'value'=>$this->config->item('pdf_receipt_message')));?>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
						<?php echo form_label(lang('config_show_signature_on_receiving_receipt').':', 'show_signature_on_receiving_receipt', array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_signature_on_receiving_receipt',
							'id'=>'show_signature_on_receiving_receipt',
							'value'=>'show_signature_on_receiving_receipt',
							'checked'=>$this->config->item('show_signature_on_receiving_receipt')));?>
							<label for="show_signature_on_receiving_receipt"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_receipt')) ?>">	
					<?php echo form_label(lang('config_override_signature_text').':', 'override_signature_text',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_textarea(array(
							'name'=>'override_signature_text',
							'id'=>'override_signature_text',
							'class'=>'form-control text-area',
							'rows'=>'4',
							'cols'=>'30',
							'value'=>$this->config->item('override_signature_text')));?>
						</div>
					</div>

				</div>
			</div>
		</div>
						
		<!-- Profit -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_profit_info'))  ?>
				</div>
				<div class="panel-body">
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_profit')) ?>">
						<?php echo form_label(lang('config_calculate_profit_for_giftcard_when').':', 'calculate_profit_for_giftcard_when',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('calculate_profit_for_giftcard_when', array(
								''  => lang('common_do_nothing'),
								'redeeming_giftcard'   => lang('config_redeeming_giftcard'), 
								'selling_giftcard'  => lang('config_selling_giftcard'),
							),
							$this->config->item('calculate_profit_for_giftcard_when'), 'class="form-control" id="calculate_profit_for_giftcard_when"');
							?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_profit')) ?>">	
					<?php echo form_label(lang('config_remove_commission_from_profit_in_reports').':', 'remove_commission_from_profit_in_reports',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'remove_commission_from_profit_in_reports',
							'id'=>'remove_commission_from_profit_in_reports',
							'value'=>'1',
							'checked'=>$this->config->item('remove_commission_from_profit_in_reports')));?>
							<label for="remove_commission_from_profit_in_reports"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_profit')) ?>">	
					<?php echo form_label(lang('config_remove_points_from_profit').':', 'remove_points_from_profit',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'remove_points_from_profit',
							'id'=>'remove_points_from_profit',
							'value'=>'1',
							'checked'=>$this->config->item('remove_points_from_profit')));?>
							<label for="remove_points_from_profit"><span></span></label>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<!-- Barcodes -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_barcodes_info'))  ?>
				</div>	
				<div class="panel-body">
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_id_to_show_on_barcode').':', 'id_to_show_on_barcode',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('id_to_show_on_barcode', array(
							'id'   => lang('common_item_id'),
							'number'  => lang('common_item_number_expanded'),
							'product_id'    => lang('common_product_id'),
							),
							$this->config->item('id_to_show_on_barcode'), 'class="form-control" id="id_to_show_on_barcode"')
							?>
						</div>
					</div>
					
					
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_display_item_name_first_for_variation_name').':', 'display_item_name_first_for_variation_name',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'display_item_name_first_for_variation_name',
							'id'=>'display_item_name_first_for_variation_name',
							'value'=>'display_item_name_first_for_variation_name',
							'checked'=>$this->config->item('display_item_name_first_for_variation_name')));?>
							<label for="display_item_name_first_for_variation_name"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_hide_barcode_on_barcode_labels').':', 'hide_barcode_on_barcode_labels',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_barcode_on_barcode_labels',
							'id'=>'hide_barcode_on_barcode_labels',
							'value'=>'hide_barcode_on_barcode_labels',
							'checked'=>$this->config->item('hide_barcode_on_barcode_labels')));?>
							<label for="hide_barcode_on_barcode_labels"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_barcode_price_include_tax').':', 'barcode_price_include_tax',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'barcode_price_include_tax',
							'id'=>'barcode_price_include_tax',
							'value'=>'barcode_price_include_tax',
							'checked'=>$this->config->item('barcode_price_include_tax')));?>
							<label for="barcode_price_include_tax"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_hide_expire_date_on_barcodes').':', 'hide_expire_date_on_barcodes',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_expire_date_on_barcodes',
							'id'=>'hide_expire_date_on_barcodes',
							'value'=>'hide_expire_date_on_barcodes',
							'checked'=>$this->config->item('hide_expire_date_on_barcodes')));?>
							<label for="hide_expire_date_on_barcodes"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_hide_price_on_barcodes').':', 'hide_price_on_barcodes',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_price_on_barcodes',
							'id'=>'hide_price_on_barcodes',
							'value'=>'hide_price_on_barcodes',
							'checked'=>$this->config->item('hide_price_on_barcodes')));?>
							<label for="hide_price_on_barcodes"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_hide_name_on_barcodes').':', 'hide_name_on_barcodes',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_name_on_barcodes',
							'id'=>'hide_name_on_barcodes',
							'value'=>'hide_name_on_barcodes',
							'checked'=>$this->config->item('hide_name_on_barcodes')));?>
							<label for="hide_name_on_barcodes"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_disable_recv_number_on_barcode').':', 'disable_recv_number_on_barcode',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_recv_number_on_barcode',
							'id'=>'disable_recv_number_on_barcode',
							'value'=>'disable_recv_number_on_barcode',
							'checked'=>$this->config->item('disable_recv_number_on_barcode')));?>
							<label for="disable_recv_number_on_barcode"><span></span></label>
						</div>
					</div>
															
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_show_barcode_company_name').':', 'show_barcode_company_name',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'show_barcode_company_name',
							'id'=>'show_barcode_company_name',
							'value'=>'show_barcode_company_name',
							'checked'=>$this->config->item('show_barcode_company_name')));?>
							<label for="show_barcode_company_name"><span></span></label>
						</div>
					</div>
									
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_use_rtl_barcode_library').':', 'use_rtl_barcode_library',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'use_rtl_barcode_library',
							'id'=>'use_rtl_barcode_library',
							'value'=>'use_rtl_barcode_library',
							'checked'=>$this->config->item('use_rtl_barcode_library')));?>
							<label for="use_rtl_barcode_library"><span></span></label>
						</div>
					</div>									
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_enable_scale').':', 'enable_scale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'enable_scale',
							'id'=>'enable_scale',
							'value'=>'enable_scale',
							'checked'=>$this->config->item('enable_scale')));?>
							<label for="enable_scale"><span></span></label>
						</div>
					</div>
								
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_scale_format').':', 'scale_format',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('scale_format', array(
							'scale_1'   => lang('config_scale_1'),
							'scale_2'  => lang('config_scale_2'),
							'scale_3'    => lang('config_scale_3'),
							'scale_4'    => lang('config_scale_4'),
							),
							$this->config->item('scale_format'), 'class="form-control" id="scale_format"')
							?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_barcodes')) ?>">	
						<?php echo form_label(lang('config_scale_divide_by').':', 'scale_divide_by',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('scale_divide_by', array(
							'1000'   => '1000',
							'100'   => '100',
							'10'  => '10',
							'1'    => '1',
							),
							$this->config->item('scale_divide_by'), 'class="form-control" id="scale_divide_by"')
							?>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<!-- Customer Loyalty -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_customer_loyalty_info'))  ?>
				</div>	
				<div class="panel-body">
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
					<?php echo form_label(lang('config_enable_customer_loyalty_system').':', 'enable_customer_loyalty_system',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'enable_customer_loyalty_system',
							'id'=>'enable_customer_loyalty_system',
							'value'=>'enable_customer_loyalty_system',
							'checked'=>$this->config->item('enable_customer_loyalty_system')));?>
							<label for="enable_customer_loyalty_system"><span></span></label>
						</div>
					</div>
					
					<div id="loyalty_setup">
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_disable_loyalty_by_default').':', 'disable_loyalty_by_default',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'disable_loyalty_by_default',
								'id'=>'disable_loyalty_by_default',
								'value'=>'disable_loyalty_by_default',
								'checked'=>$this->config->item('disable_loyalty_by_default')));?>
								<label for="disable_loyalty_by_default"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" id="loyalty_option_wrapper" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
							<?php echo form_label(lang('config_loyalty_option').':', 'loyalty_option',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('loyalty_option', 
							 array(
								'simple'=> lang('config_simple'),
								'advanced'=>lang('config_advanced'),
							), $this->config->item('loyalty_option') ? $this->config->item('loyalty_option') : '20', 'class="form-control" id="loyalty_option"');
								?>
							</div>
						</div>		
												
						<div id="loyalty_setup_simple" style="display: none;">
								<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
								<?php echo form_label(lang('config_number_of_sales_for_discount').':', 'number_of_sales_for_discount',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
									<div class="col-sm-9 col-md-9 col-lg-10">
								<?php echo form_input(array(
									'class'=>'validate form-control form-inps',
									'name'=>'number_of_sales_for_discount',
									'id'=>'number_of_sales_for_discount',
									'value'=>$this->config->item('number_of_sales_for_discount')));?>
									</div>
								</div>
								
								<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
								<?php echo form_label(lang('config_discount_percent_earned').':', 'discount_percent_earned',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
									<div class="col-sm-9 col-md-9 col-lg-10">
								<?php echo form_input(array(
									'class'=>'validate form-control form-inps',
									'name'=>'discount_percent_earned',
									'id'=>'discount_percent_earned',
									'value'=>$this->config->item('discount_percent_earned')));?>
									</div>
								</div>
								
								<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
								<?php echo form_label(lang('hide_sales_to_discount_on_receipt').':', 'hide_sales_to_discount_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
									<div class="col-sm-9 col-md-9 col-lg-10">
									<?php echo form_checkbox(array(
										'name'=>'hide_sales_to_discount_on_receipt',
										'id'=>'hide_sales_to_discount_on_receipt',
										'value'=>'hide_sales_to_discount_on_receipt',
										'checked'=>$this->config->item('hide_sales_to_discount_on_receipt')));?>
										<label for="hide_sales_to_discount_on_receipt"><span></span></label>
									</div>
								</div>							
								
						</div>				
						
						<div id="loyalty_setup_advanced" style="display: none;">					
							<?php
							$spend_amount_for_points = '';
							$points_to_earn= '';
							if (strpos($this->config->item('spend_to_point_ratio'),':') !== FALSE)
							{
					      	list($spend_amount_for_points, $points_to_earn) = explode(":",$this->config->item('spend_to_point_ratio'),2);
							}
							?>
							<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
							<?php echo form_label(lang('config_spend_to_point_ratio').':', 'spend_amount_for_points',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
								<div class="col-sm-9 col-md-9 col-lg-10">
						
							<?php echo form_input(array(
								'class'=>'validate form-control form-inps',
								'name'=>'spend_amount_for_points',
								'id'=>'spend_amount_for_points',
								'placeholder' => lang('config_loyalty_explained_spend_amount'),
								'value'=>$spend_amount_for_points));?>
								<?php echo form_input(array(
									'class'=>'validate form-control form-inps',
									'name'=>'points_to_earn',
									'id'=>'points_to_earn',
									'placeholder' => lang('config_loyalty_explained_points_to_earn'),
									'value'=>$points_to_earn));?>
								</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_point_value').':', 'point_value',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_input(array(
							'class'=>'validate form-control form-inps',
							'name'=>'point_value',
							'id'=>'point_value',
							'value'=>$this->config->item('point_value') ? $this->config->item('point_value') : ''));?>

							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_minimum_points_to_redeem').':', 'minimum_points_to_redeem',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_input(array(
							'class'=>'validate form-control form-inps',
							'name'=>'minimum_points_to_redeem',
							'id'=>'minimum_points_to_redeem',
							'value'=>$this->config->item('minimum_points_to_redeem') ? $this->config->item('minimum_points_to_redeem') : ''));?>

							</div>
						</div>												
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_loyalty_points_without_tax').':', 'loyalty_points_without_tax',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'loyalty_points_without_tax',
								'id'=>'loyalty_points_without_tax',
								'value'=>'loyalty_points_without_tax',
								'checked'=>$this->config->item('loyalty_points_without_tax')));?>
								<label for="loyalty_points_without_tax"><span></span></label>
							</div>
						</div>

						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_prompt_to_use_points').':', 'prompt_to_use_points',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'prompt_to_use_points',
								'id'=>'prompt_to_use_points',
								'value'=>'prompt_to_use_points',
								'checked'=>$this->config->item('prompt_to_use_points')));?>
								<label for="prompt_to_use_points"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_hide_points_on_receipt').':', 'hide_points_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'hide_points_on_receipt',
								'id'=>'hide_points_on_receipt',
								'value'=>'hide_points_on_receipt',
								'checked'=>$this->config->item('hide_points_on_receipt')));?>
								<label for="hide_points_on_receipt"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_disable_gift_cards_sold_from_loyalty').':', 'disable_gift_cards_sold_from_loyalty',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'disable_gift_cards_sold_from_loyalty',
								'id'=>'disable_gift_cards_sold_from_loyalty',
								'value'=>'disable_gift_cards_sold_from_loyalty',
								'checked'=>$this->config->item('disable_gift_cards_sold_from_loyalty')));?>
								<label for="disable_gift_cards_sold_from_loyalty"><span></span></label>
							</div>
						</div>
						
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_customer_loyalty')) ?>">	
						<?php echo form_label(lang('config_enable_points_for_giftcard_payments').':', 'enable_points_for_giftcard_payments',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'enable_points_for_giftcard_payments',
								'id'=>'enable_points_for_giftcard_payments',
								'value'=>'enable_points_for_giftcard_payments',
								'checked'=>$this->config->item('enable_points_for_giftcard_payments')));?>
								<label for="enable_points_for_giftcard_payments"><span></span></label>
							</div>
						</div>
						
						
						
					</div>
																				
					</div>
				</div>
			</div>
		</div>
		
		<!-- Price Tiers -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_price_tiers_info'))  ?>
				</div>	
				<div class="panel-body">
					
					<div class="form-group no-padding-right" data-keyword="<?php echo H(lang('config_keyword_price_tiers')) ?>">	
					<?php echo form_label(lang('config_price_tiers').':', '',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-md-9 col-sm-9 col-lg-10">
							<div class="table-responsive">
								<table id="price_tiers" class="table">
									<thead>
										<tr>
										<th><?php echo lang('config_sort'); ?></th>
										<th><?php echo lang('common_tier_name'); ?></th>
										<th><?php echo lang('config_default_percent_off'); ?></th>
										<th><?php echo lang('config_default_cost_plus_percent'); ?></th>
										<th><?php echo lang('config_default_cost_plus_fixed_amount'); ?></th>
										<th><?php echo lang('common_delete'); ?></th>
										</tr>
									</thead>
									
									<tbody>
									<?php foreach($tiers->result() as $tier) { ?>
										<tr>
											<td><span class="ui-icon ui-icon-arrowthick-2-n-s"></span></td>
											<td><input type="text" data-index="<?php echo $tier->id; ?>" class="tiers_to_edit form-control" name="tiers_to_edit[<?php echo $tier->id; ?>][name]" value="<?php echo H($tier->name); ?>" /></td>
											<td><input type="text" data-index="<?php echo $tier->id; ?>" class="tiers_to_edit form-control default_percent_off" name="tiers_to_edit[<?php echo $tier->id; ?>][default_percent_off]" value="<?php echo $tier->default_percent_off ? to_quantity($tier->default_percent_off) : ''; ?>" /></td>
											<td><input type="text" data-index="<?php echo $tier->id; ?>" class="tiers_to_edit form-control default_cost_plus_percent" name="tiers_to_edit[<?php echo $tier->id; ?>][default_cost_plus_percent]" value="<?php echo $tier->default_cost_plus_percent ? to_quantity($tier->default_cost_plus_percent) : ''; ?>" /></td>
											<td><input type="text" data-index="<?php echo $tier->id; ?>" class="tiers_to_edit form-control default_cost_plus_fixed_amount" name="tiers_to_edit[<?php echo $tier->id; ?>][default_cost_plus_fixed_amount]" value="<?php echo $tier->default_cost_plus_fixed_amount ? to_currency_no_money($tier->default_cost_plus_fixed_amount) : ''; ?>" /></td>
										<td>
											<?php if ($this->Employee->has_module_action_permission('items', 'delete', $this->Employee->get_logged_in_employee_info()->person_id) || $this->Employee->has_module_action_permission('item_kits', 'delete', $this->Employee->get_logged_in_employee_info()->person_id)) {?>				
											<a class="delete_tier" href="javascript:void(0);" data-tier-id='<?php echo $tier->id; ?>'><?php echo lang('common_delete'); ?></a>
											<?php }else { ?>
												&nbsp;
											<?php } ?>
											</td>
									</tr>
									<?php } ?>
									</tbody>
								</table>
								
								<a href="javascript:void(0);" id="add_tier"><?php echo lang('config_add_tier'); ?></a>
								</div>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_price_tiers')) ?>">	
							<?php echo form_label(lang('config_override_tier_name').':', 'override_tier_name',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
								<?php echo form_input(array(
									'class'=>'form-control form-inps',
								'name'=>'override_tier_name',
								'id'=>'override_tier_name',
								'value'=>$this->config->item('override_tier_name')));?>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_price_tiers')) ?>">	
							<?php echo form_label(lang('config_hide_tier_on_receipt').':', 'hide_tier_on_receipt',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'hide_tier_on_receipt',
								'id'=>'hide_tier_on_receipt',
								'value'=>'1',
								'checked'=>$this->config->item('hide_tier_on_receipt')));?>
								<label for="hide_tier_on_receipt"><span></span></label>
							</div>
						</div>
						
						
	 					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_price_tiers')) ?>">	
	 					<?php echo form_label(lang('config_default_tier_percent_type_for_excel_import').':', 'default_tier_percent_type_for_excel_import',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
	 						<div class="col-sm-9 col-md-9 col-lg-10">
	 						<?php echo form_dropdown('default_tier_percent_type_for_excel_import', array(
	 							'percent_off'    => lang('common_percent_off'),
	 							'cost_plus_percent'    => lang('common_cost_plus_percent'),
							),
	 							$this->config->item('default_tier_percent_type_for_excel_import')===NULL ? 'before' : $this->config->item('default_tier_percent_type_for_excel_import') , 'class="form-control" id="default_tier_percent_type_for_excel_import"');
	 							?>
	 						</div>						
	 					</div>
						
	 					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_price_tiers')) ?>">	
	 					<?php echo form_label(lang('config_default_tier_fixed_type_for_excel_import').':', 'default_tier_fixed_type_for_excel_import',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
	 						<div class="col-sm-9 col-md-9 col-lg-10">
	 						<?php echo form_dropdown('default_tier_fixed_type_for_excel_import', array(
	 							'fixed_amount'    => lang('common_fixed_amount'),
	 							'cost_plus_fixed_amount'    => lang('common_cost_plus_fixed_amount'),
							),
	 							$this->config->item('default_tier_fixed_type_for_excel_import')===NULL ? 'before' : $this->config->item('default_tier_fixed_type_for_excel_import') , 'class="form-control" id="default_tier_fixed_type_for_excel_import"');
	 							?>
	 						</div>						
	 					</div>
												
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_price_tiers')) ?>">	
							<?php echo form_label(lang('config_round_tier_prices_to_2_decimals').':', 'round_tier_prices_to_2_decimals',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'round_tier_prices_to_2_decimals',
								'id'=>'round_tier_prices_to_2_decimals',
								'value'=>'1',
								'checked'=>$this->config->item('round_tier_prices_to_2_decimals')));?>
								<label for="round_tier_prices_to_2_decimals"><span></span></label>
							</div>
						</div>
						
				</div>
			</div>
		</div>
		
		<!-- Auto Increment IDs Settings -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_auto_increment_ids_info'))  ?>
				</div>	
				<div class="panel-body">
					<div class="">
						<div class="col-sm-offset-3 col-md-offset-3 col-lg-offset-2 col-sm-9 col-md-9 col-lg-10">
							<div class="alert alert-info" role="alert"><strong><?php echo lang('common_note') ?>:</strong> <?php echo lang('config_auto_increment_note') ?></div>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_auto_increment')) ?>">
						
						<?php echo form_label(lang('config_item_id_auto_increment').':', 'item_id_auto_increment',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'validate form-control form-inps',
							'name'=>'item_id_auto_increment',
							'id'=>'item_id_auto_increment',
							'value'=>''));?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_auto_increment')) ?>">	
						<?php echo form_label(lang('config_item_kit_id_auto_increment').':', 'item_kit_id_auto_increment',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'validate form-control form-inps',
							'name'=>'item_kit_id_auto_increment',
							'id'=>'item_kit_id_auto_increment',
							'value'=>''));?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_auto_increment')) ?>">	
						<?php echo form_label(lang('config_sale_id_auto_increment').':', 'sale_id_auto_increment',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'validate form-control form-inps',
							'name'=>'sale_id_auto_increment',
							'id'=>'sale_id_auto_increment',
							'value'=>''));?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_auto_increment')) ?>">	
						<?php echo form_label(lang('config_receiving_id_auto_increment').':', 'receiving_id_auto_increment',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
								'class'=>'validate form-control form-inps',
							'name'=>'receiving_id_auto_increment',
							'id'=>'receiving_id_auto_increment',
							'value'=>''));?>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Items Settings -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_items_info'))  ?>
				</div>	
				<div class="panel-body">
					<?php if ($this->Employee->has_module_action_permission('items', 'manage_categories', $this->Employee->get_logged_in_employee_info()->person_id)) {?>
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
							<div class="col-sm-9 col-md-9 col-lg-10">
								<?php echo anchor("items/manage_categories",lang('items_manage_categories'),array('target' => '_blank', 'title'=>lang('items_manage_categories')));?>
							</div>
						</div>
					<?php } ?>		
				
					<?php if ($this->Employee->has_module_action_permission('items', 'manage_tags', $this->Employee->get_logged_in_employee_info()->person_id)) {?>
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
							<div class="col-sm-9 col-md-9 col-lg-10">
								<?php echo anchor("items/manage_tags",lang('items_manage_tags'),array('target' => '_blank', 'title'=>lang('items_manage_tags')));?>
							</div>
						</div>
					<?php } ?>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
						<?php echo form_label(lang('config_number_of_items_per_page').':', 'number_of_items_per_page',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label  required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('number_of_items_per_page', 
						 array(
							'20'=>'20',
							'50'=>'50',
							'100'=>'100',
							'200'=>'200',
							'500'=>'500'
							), $this->config->item('number_of_items_per_page') ? $this->config->item('number_of_items_per_page') : '20', 'class="form-control" id="number_of_items_per_page"');
							?>
						</div>
					</div>		
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
						<?php echo form_label(lang('config_items_per_search_suggestions').':', 'items_per_search_suggestions',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label  required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_dropdown('items_per_search_suggestions', 
						 array(
							'20'=>'20',
							'50'=>'50',
							'100'=>'100',
							'200'=>'200',
							'500'=>'500'
							), $this->config->item('items_per_search_suggestions') ? $this->config->item('items_per_search_suggestions') : '20', 'class="form-control" id="items_per_search_suggestions"');
							?>
						</div>
					</div>		
								
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
						<?php echo form_label(lang('config_number_of_items_in_grid').':', 'number_of_items_in_grid',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label  required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php 
							$numbers = array();
							foreach(range(1, 50) as $number) 
							{ 
								$numbers[$number] = $number;
								
							}
							?> 
						<?php echo form_dropdown('number_of_items_in_grid', 
							 $numbers, $this->config->item('number_of_items_in_grid') ? $this->config->item('number_of_items_in_grid') : '14', 'class="form-control" id="number_of_items_in_grid"');
							?>
						</div>
					</div>				
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
						<?php echo form_label(lang('config_default_reorder_level_when_creating_items').':', 'default_reorder_level_when_creating_items',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'default_reorder_level_when_creating_items',
							'id'=>'default_reorder_level_when_creating_items',
							'value'=>$this->config->item('default_reorder_level_when_creating_items')));?>
						</div>
					</div>
					

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
						<?php echo form_label(lang('config_default_days_to_expire_when_creating_items').':', 'default_days_to_expire_when_creating_items',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'default_days_to_expire_when_creating_items',
							'id'=>'default_days_to_expire_when_creating_items',
							'value'=>$this->config->item('default_days_to_expire_when_creating_items')));?>
						</div>
					</div>
					
												
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('config_default_new_items_to_service').':', 'default_new_items_to_service',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'default_new_items_to_service',
							'id'=>'default_new_items_to_service',
							'value'=>'default_new_items_to_service',
							'checked'=>$this->config->item('default_new_items_to_service')));?>
							<label for="default_new_items_to_service"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('config_highlight_low_inventory_items_in_items_module').':', 'highlight_low_inventory_items_in_items_module',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'highlight_low_inventory_items_in_items_module',
							'id'=>'highlight_low_inventory_items_in_items_module',
							'value'=>'highlight_low_inventory_items_in_items_module',
							'checked'=>$this->config->item('highlight_low_inventory_items_in_items_module')));?>
							<label for="highlight_low_inventory_items_in_items_module"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('config_limit_manual_price_adj').':', 'limit_manual_price_adj',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'limit_manual_price_adj',
							'id'=>'limit_manual_price_adj',
							'value'=>'1',
							'checked'=>$this->config->item('limit_manual_price_adj')));?>
							<label for="limit_manual_price_adj"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('common_max_discount_percent').' % :', 'max_discount_percent',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?> 
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'max_discount_percent',
							'id'=>'max_discount_percent',
							'value'=>$this->config->item('max_discount_percent')));?>
						</div>
					</div>
					
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('config_enable_markup_calculator').':', 'enable_markup_calculator',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'enable_markup_calculator',
							'id'=>'enable_markup_calculator',
							'value'=>'1',
							'checked'=>$this->config->item('enable_markup_calculator')));?>
							<label for="enable_markup_calculator"><span></span></label>
						</div>
					</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('config_enable_margin_calculator').':', 'enable_margin_calculator',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'enable_margin_calculator',
							'id'=>'enable_margin_calculator',
							'value'=>'1',
							'checked'=>$this->config->item('enable_margin_calculator')));?>
							<label for="enable_margin_calculator"><span></span></label>
						</div>
					</div>
				
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('config_verify_age_for_products').':', 'verify_age_for_products',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'verify_age_for_products',
							'id'=>'verify_age_for_products',
							'value'=>'1',
							'checked'=>$this->config->item('verify_age_for_products')));?>
							<label for="verify_age_for_products"><span></span></label>
						</div>
					</div>


					<div id="default_age_input_container" class="form-group  <?php if (!$this->config->item('verify_age_for_products')){echo 'hidden';} ?>" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
						<?php echo form_label(lang('config_default_age_to_verify').':', 'default_age_to_verify',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'default_age_to_verify',
							'id'=>'default_age_to_verify',
							'value'=>$this->config->item('default_age_to_verify')));?>
						</div>
					</div>
						
					<div id="strict_age_format_check_container" class="form-group" data-keyword="<?php echo H(lang('config_keyword_items')) ?>">	
					<?php echo form_label(lang('config_strict_age_format_check').':', 'strict_age_format_check',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'strict_age_format_check',
							'id'=>'strict_age_format_check',
							'value'=>'1',
							'checked'=>$this->config->item('strict_age_format_check')));?>
							<label for="strict_age_format_check"><span></span></label>
						</div>
					</div>
					

				</div>
			</div>
		</div>
		
		<!-- Employee Settings -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_employee_info'))  ?>
				</div>	
				<div class="panel-body">
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_employees')) ?>">	
					<?php echo form_label(lang('config_enable_timeclock').':', 'timeclock',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'timeclock',
							'id'=>'timeclock',
							'value'=>'timeclock',
							'checked'=>$this->config->item('timeclock')));?>
							<label for="timeclock"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_employees')) ?>">	
					<?php echo form_label(lang('config_enable_timeclock_pto').':', 'timeclock_pto',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'timeclock_pto',
							'id'=>'timeclock_pto',
							'value'=>'timeclock_pto',
							'checked'=>$this->config->item('timeclock_pto')));?>
							<label for="timeclock_pto"><span></span></label>
						</div>
					</div>				
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_employees')) ?>">	
					<?php echo form_label(lang('config_logout_on_clock_out').':', 'logout_on_clock_out',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'logout_on_clock_out',
							'id'=>'logout_on_clock_out',
							'value'=>'logout_on_clock_out',
							'checked'=>$this->config->item('logout_on_clock_out')));?>
							<label for="logout_on_clock_out"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_employees')) ?>">	
					<?php echo form_label(lang('config_fast_user_switching').':', 'fast_user_switching',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'fast_user_switching',
							'id'=>'fast_user_switching',
							'value'=>'fast_user_switching',
							'checked'=>$this->config->item('fast_user_switching')));?>
							<label for="fast_user_switching"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_employees')) ?>">	
					<?php echo form_label(lang('config_require_employee_login_before_each_sale').':', 'require_employee_login_before_each_sale',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'require_employee_login_before_each_sale',
							'id'=>'require_employee_login_before_each_sale',
							'value'=>'require_employee_login_before_each_sale',
							'checked'=>$this->config->item('require_employee_login_before_each_sale')));?>
							<label for="require_employee_login_before_each_sale"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_employees')) ?>">	
					<?php echo form_label(lang('config_reset_location_when_switching_employee').':', 'reset_location_when_switching_employee',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'reset_location_when_switching_employee',
							'id'=>'reset_location_when_switching_employee',
							'value'=>'reset_location_when_switching_employee',
							'checked'=>$this->config->item('reset_location_when_switching_employee')));?>
							<label for="reset_location_when_switching_employee"><span></span></label>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Store Accounts -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_store_accounts_info'))  ?>
				</div>	
				<div class="panel-body">
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
					<?php echo form_label(lang('config_customers_store_accounts').':', 'customers_store_accounts',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'customers_store_accounts',
							'id'=>'customers_store_accounts',
							'value'=>'customers_store_accounts',
							'checked'=>$this->config->item('customers_store_accounts')));?>
							<label for="customers_store_accounts"><span></span></label>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
						<?php echo form_label(lang('config_default_credit_limit').':', 'default_credit_limit',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'default_credit_limit',
							'id'=>'default_credit_limit',
							'value'=>$this->config->item('default_credit_limit')));?>
						</div>
					</div>
					
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
					<?php echo form_label(lang('config_suppliers_store_accounts').':', 'suppliers_store_accounts',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'suppliers_store_accounts',
							'id'=>'suppliers_store_accounts',
							'value'=>'suppliers_store_accounts',
							'checked'=>$this->config->item('suppliers_store_accounts')));?>
							<label for="suppliers_store_accounts"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
						<?php echo form_label(lang('config_disable_store_account_when_over_credit_limit').':', 'disable_store_account_when_over_credit_limit',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_store_account_when_over_credit_limit',
							'id'=>'disable_store_account_when_over_credit_limit',
							'value'=>'1',
							'checked'=>$this->config->item('disable_store_account_when_over_credit_limit')));?>
							<label for="disable_store_account_when_over_credit_limit"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
					<?php echo form_label(lang('config_store_account_statement_message').':', 'store_account_statement_message',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_textarea(array(
							'name'=>'store_account_statement_message',
							'id'=>'store_account_statement_message',
							'class'=>'form-control text-area',
							'rows'=>'4',
							'cols'=>'30',
							'value'=>$this->config->item('store_account_statement_message')));?>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
						<?php echo form_label(lang('config_hide_store_account_payments_in_reports').':', 'hide_store_account_payments_in_reports',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_store_account_payments_in_reports',
							'id'=>'hide_store_account_payments_in_reports',
							'value'=>'1',
							'checked'=>$this->config->item('hide_store_account_payments_in_reports')));?>
							<label for="hide_store_account_payments_in_reports"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
						<?php echo form_label(lang('config_hide_store_account_payments_from_report_totals').':', 'hide_store_account_payments_from_report_totals',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_store_account_payments_from_report_totals',
							'id'=>'hide_store_account_payments_from_report_totals',
							'value'=>'1',
							'checked'=>$this->config->item('hide_store_account_payments_from_report_totals')));?>
							<label for="hide_store_account_payments_from_report_totals"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_store_accounts')) ?>">	
						<?php echo form_label(lang('config_paypal_me').':', 'paypal_me',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(array(
							'class'=>'form-control form-inps',
							'name'=>'paypal_me',
							'id'=>'paypal_me',
							'placeholder' => 'paypal.me '.lang('common_username'),
							'value'=>$this->config->item('paypal_me')));?>
						</div>
					</div>
									
				</div>
			</div>
		</div>
		
		<!-- Application Settings -->
		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang('config_application_settings_info'))  ?>
				</div>	
				<div class="panel-body">
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_week_start_day').':', 'week_start_day',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label  required')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('week_start_day', array(
								'monday'    => lang('common_monday'),
								'sunday'  => lang('common_sunday')
								), $this->config->item('week_start_day'), 'class="form-control" id="week_start_day"');
								?>
							</div>
						</div>						
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">
								<?php echo form_label(lang('config_store_opening_time').' :', 'store_opening_time', array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
			 					<div class="col-sm-9 col-md-9 col-lg-10">
			 					    <div class="input-group">
			 							<span class="input-group-addon bg"><i class="glyphicon glyphicon-time"></i></span>
			 							<?php echo form_input(array(
		 						        'name'=>'store_opening_time',
		 						        'id'=>'store_opening_time',
		 										'class'=>'form-control timepicker',
		 						        'value'=> $this->config->item('store_opening_time') ? $this->config->item('store_opening_time') : ''
										));?>
			 					    </div>
			 					</div>
			 			</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">
								<?php echo form_label(lang('config_store_closing_time').' :', 'store_closing_time', array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
			 					<div class="col-sm-9 col-md-9 col-lg-10">
			 					    <div class="input-group">
			 							<span class="input-group-addon bg"><i class="glyphicon glyphicon-time"></i></span>
			 							<?php echo form_input(array(
		 						        'name'=>'store_closing_time',
		 						        'id'=>'store_closing_time',
		 										'class'=>'form-control timepicker',
		 						        'value'=> $this->config->item('store_closing_time') ? $this->config->item('store_closing_time') : ''
										));?>
			 					    </div>
			 					</div>
			 			</div>
																					
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_offline_mode').':', 'offline_mode',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'offline_mode',
								'id'=>'offline_mode',
								'value'=>'offline_mode',
								'checked'=>$this->config->item('offline_mode')));?>
								<label for="offline_mode"><span></span></label>
							</div>
						</div>						
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_auto_sync_offline_sales').':', 'auto_sync_offline_sales',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'auto_sync_offline_sales',
								'id'=>'auto_sync_offline_sales',
								'value'=>'auto_sync_offline_sales',
								'checked'=>$this->config->item('auto_sync_offline_sales')));?>
								<label for="auto_sync_offline_sales"><span></span></label>
							</div>
						</div>
																	
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_reset_offline_data').':', 'offline_mode',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
            				<button onclick='delete_all_client_side_dbs();bootbox.alert(<?php echo json_encode(lang('common_success')); ?>);' id="reset_offline_mode" type="button" class="btn btn-lg btn-primary"><?php echo lang('config_reset_offline_data');?></button>
						</div>
					</div>
											
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('common_dark_mode').':', 'dark_mode',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'dark_mode',
								'id'=>'dark_mode',
								'value'=>'dark_mode',
								'checked'=>$this->config->item('dark_mode')));?>
								<label for="dark_mode"><span></span></label>
							</div>
						</div>
											
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_default_new_customer_to_current_location').':', 'default_new_customer_to_current_location',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'default_new_customer_to_current_location',
								'id'=>'default_new_customer_to_current_location',
								'value'=>'default_new_customer_to_current_location',
								'checked'=>$this->config->item('default_new_customer_to_current_location')));?>
								<label for="default_new_customer_to_current_location"><span></span></label>
							</div>
						</div>

					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
					<?php echo form_label(lang('config_hide_expire_dashboard').':', 'hide_expire_dashboard',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_expire_dashboard',
							'id'=>'hide_expire_dashboard',
							'value'=>'hide_expire_dashboard',
							'checked'=>$this->config->item('hide_expire_dashboard')));?>
							<label for="hide_expire_dashboard"><span></span></label>
						</div>
					</div>
														
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
					<?php echo form_label(lang('config_do_not_delete_saved_card_after_failure').':', 'do_not_delete_saved_card_after_failure',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'do_not_delete_saved_card_after_failure',
							'id'=>'do_not_delete_saved_card_after_failure',
							'value'=>'do_not_delete_saved_card_after_failure',
							'checked'=>$this->config->item('do_not_delete_saved_card_after_failure')));?>
							<label for="do_not_delete_saved_card_after_failure"><span></span></label>
						</div>
					</div>

					<?php if (!is_on_demo_host()) { ?>
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('common_test_mode').' ('.lang('config_test_mode_help').'):', 'test_mode',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'test_mode',
								'id'=>'test_mode',
								'value'=>'test_mode',
								'checked'=>$this->config->item('test_mode')));?>
								<label for="test_mode"><span></span></label>
							</div>
						</div>
					<?php } ?>
							
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
					<?php echo form_label(lang('common_disable_test_mode').':', 'disable_test_mode',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'disable_test_mode',
							'id'=>'disable_test_mode',
							'value'=>'disable_test_mode',
							'checked'=>$this->config->item('disable_test_mode')));?>
							<label for="disable_test_mode"><span></span></label>
						</div>
					</div>
					
					<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
					<?php echo form_label(lang('config_hide_item_descriptions_in_reports').':', 'hide_item_descriptions_in_reports',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox(array(
							'name'=>'hide_item_descriptions_in_reports',
							'id'=>'hide_item_descriptions_in_reports',
							'value'=>'hide_item_descriptions_in_reports',
							'checked'=>$this->config->item('hide_item_descriptions_in_reports')));?>
							<label for="hide_item_descriptions_in_reports"><span></span></label>
						</div>
					</div>
					
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_enable_sounds').':', 'enable_sounds',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'enable_sounds',
								'id'=>'enable_sounds',
								'value'=>'enable_sounds',
								'checked'=>$this->config->item('enable_sounds')));?>
								<label for="enable_sounds"><span></span></label>
							</div>
						</div>
															
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_show_language_switcher').':', 'show_language_switcher',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'show_language_switcher',
								'id'=>'show_language_switcher',
								'value'=>'1',
								'checked'=>$this->config->item('show_language_switcher')));?>
								<label for="show_language_switcher"><span></span></label>
							</div>
						</div>

						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_show_clock_on_header').':', 'show_clock_on_header',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'show_clock_on_header',
								'id'=>'show_clock_on_header',
								'value'=>'1',
								'checked'=>$this->config->item('show_clock_on_header')));?>
								<label for="show_clock_on_header"><span></span></label>
								    <p class="help-block"><?php echo lang('config_show_clock_on_header_help_text'); ?></p>
							</div>
						</div>

						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_legacy_detailed_report_export').':', 'legacy_detailed_report_export',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'legacy_detailed_report_export',
								'id'=>'legacy_detailed_report_export',
								'value'=>'1',
								'checked'=>$this->config->item('legacy_detailed_report_export')));?>
								<label for="legacy_detailed_report_export"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">
						<?php echo form_label(lang('config_overwrite_existing_items_on_excel_import').':', 'overwrite_existing_items_on_excel_import',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'overwrite_existing_items_on_excel_import',
								'id'=>'overwrite_existing_items_on_excel_import',
								'value'=>'1',
								'checked'=>$this->config->item('overwrite_existing_items_on_excel_import')));?>
								<label for="overwrite_existing_items_on_excel_import"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_report_sort_order').':', 'report_sort_order',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('report_sort_order', array('asc' => lang('config_asc'), 'desc' => lang('config_desc')), $this->config->item('report_sort_order'),'class="form-control" id="report_sort_order"'); ?>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_speed_up_search_queries').' ('.lang('config_speed_up_note').')'.':', 'speed_up_search_queries',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'speed_up_search_queries',
								'id'=>'speed_up_search_queries',
								'value'=>'1',
								'checked'=>$this->config->item('speed_up_search_queries')));?>
								<label for="speed_up_search_queries"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_enable_quick_edit').':', 'enable_quick_edit',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'enable_quick_edit',
								'id'=>'enable_quick_edit',
								'value'=>'1',
								'checked'=>$this->config->item('enable_quick_edit')));?>
								<label for="enable_quick_edit"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_enhanced_search_method').':', 'enhanced_search_method',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
								<div class="col-sm-9 col-md-9 col-lg-10">
								<?php 
								$enhanced_search_options = array(
									'name'=>'enhanced_search_method',
									'id'=>'enhanced_search_method',
									'value'=>'1',
									'checked'=>$this->config->item('enhanced_search_method') && $this->config->item('supports_full_text'));
								
									if (!$this->config->item('supports_full_text'))
									{
										$enhanced_search_options['disabled'] = 'disabled';
									}
								
									echo form_checkbox($enhanced_search_options);
								
									?>
									<label for="enhanced_search_method"><span></span></label>
								</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_include_child_categories_when_searching_or_reporting').':', 'include_child_categories_when_searching_or_reporting',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'include_child_categories_when_searching_or_reporting',
								'id'=>'include_child_categories_when_searching_or_reporting',
								'value'=>'1',
								'checked'=>$this->config->item('include_child_categories_when_searching_or_reporting')));?>
								<label for="include_child_categories_when_searching_or_reporting"><span></span></label>
							</div>
						</div>
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_show_full_category_path').':', 'show_full_category_path',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'show_full_category_path',
								'id'=>'show_full_category_path',
								'value'=>'1',
								'checked'=>$this->config->item('show_full_category_path')));?>
								<label for="show_full_category_path"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_spreadsheet_format').':', 'spreadsheet_format',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('spreadsheet_format', array('CSV' => lang('config_csv'), 'XLSX' => lang('config_xlsx')), $this->config->item('spreadsheet_format'),'class="form-control" id="spreadsheet_format"'); ?>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_mailing_labels_type').':', 'mailing_labels_type',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('mailing_labels_type', array('pdf' => 'PDF', 'excel' => 'Excel'), $this->config->item('mailing_labels_type'),'class="form-control" id="mailing_labels_type"'); ?>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_phppos_session_expiration').':', 'phppos_session_expiration',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_dropdown('phppos_session_expiration',$phppos_session_expirations, $this->config->item('phppos_session_expiration')!==NULL ? $this->config->item('phppos_session_expiration') : 0,'class="form-control" id="phppos_session_expiration"'); ?>
							</div>
						</div>
						
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_always_minimize_menu').':', 'always_minimize_menu',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'always_minimize_menu',
								'id'=>'always_minimize_menu',
								'value'=>'1',
								'checked'=>$this->config->item('always_minimize_menu')));?>
								<label for="always_minimize_menu"><span></span></label>
							</div>
						</div>
						
            <div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
							<?php echo form_label(lang('config_item_lookup_order').':', 'item_lookup_order',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
								<div class="col-sm-9 col-md-9 col-lg-10">
								  	<ul id="item_lookup_order_list" class="list-group">
											<?php 
											foreach($item_lookup_order as $item_lookup_number)
											{
											?>
 		                   <li class="list-group-item"><input name="item_lookup_order[]" type="hidden" value="<?php echo H($item_lookup_number); ?>"><?php echo lang('common_'.$item_lookup_number); ?><span class="ui-icon ui-icon-arrowthick-2-n-s pull-right"></span></li>
											<?php 
											}
											?>
								    </ul>
								</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_allow_scan_of_customer_into_item_field').':', 'allow_scan_of_customer_into_item_field',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'allow_scan_of_customer_into_item_field',
								'id'=>'allow_scan_of_customer_into_item_field',
								'value'=>'1',
								'checked'=>$this->config->item('allow_scan_of_customer_into_item_field')));?>
								<label for="allow_scan_of_customer_into_item_field"><span></span></label>
							</div>
						</div>						
												
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_do_not_delete_serial_number_when_selling').':', 'do_not_delete_serial_number_when_selling',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'do_not_delete_serial_number_when_selling',
								'id'=>'do_not_delete_serial_number_when_selling',
								'value'=>'1',
								'checked'=>$this->config->item('do_not_delete_serial_number_when_selling')));?>
								<label for="do_not_delete_serial_number_when_selling"><span></span></label>
							</div>
						</div>
						
						<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_application_settings')) ?>">	
						<?php echo form_label(lang('config_hide_latest_updates_in_header').':', 'hide_latest_updates_in_header',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
							<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_checkbox(array(
								'name'=>'hide_latest_updates_in_header',
								'id'=>'hide_latest_updates_in_header',
								'value'=>'1',
								'checked'=>$this->config->item('hide_latest_updates_in_header')));?>
								<label for="hide_latest_updates_in_header"><span></span></label>
							</div>
						</div>						
												
				</div>
			</div>
		</div>
		
		<div class="form-actions">
		<?php echo form_submit(array(
			'name'=>'submitf',
			'id'=>'submitf',
			'value'=>lang('common_save'),
			'class'=>'submit_button floating-button btn btn-primary btn-lg pull-right')); ?>
		</div>
    
		<?php echo form_close(); ?>	
	</div>
</div>
<!--Inicio validar y enviar correo/validation and submit handling 4957 a 6365-->
<script type='text/javascript'>

$(document).ready(function()
{	
	date_time_picker_field($('.timepicker'), JS_TIME_FORMAT);
	date_time_picker_field($('.datepicker'), 'YYYY-MM-DD');
	
	$(".delete_currency_denom").click(function()
	{
		var id = $(this).data('id');
		$("#currency_denoms").append('<input class="deleted_denmos" type="hidden" name="deleted_denmos[]" value="'+id+'" />');
		
		$(this).parent().parent().remove();
	});
	
	$(".delete_currency_exchange_rate").click(function()
	{
		$(this).parent().parent().remove();	
	});
	
	$("#add_denom").click(function()
	{
		$("#currency_denoms tbody").append('<tr><td><input type="text" class="form-control" name="currency_denoms_name[]" value="" /></td><td><input type="text" class="form-control" name="currency_denoms_value[]" value="" /></td><td>&nbsp;</td><input type="hidden" name="currency_denoms_ids[]" /></tr>');
	});
	
	$("#add_exchange_rate").click(function()
	{		
		$("#currency_exchange_rates tbody").append('<tr>'+
		'<td><input type="text" class="form-control" name="currency_exchange_rates_to[]" value="" /></td>'+
		'<td><input type="text" class="form-control" name="currency_exchange_rates_symbol[]" value="$" /></td>'+
		'<td><select name="currency_exchange_rates_symbol_location[]" class="form-control"><option value="before"><?php echo lang('config_before_number'); ?></option><option value="after"><?php echo lang('config_after_number'); ?></option></select></td>'+
		'<td><select name="currency_exchange_rates_number_of_decimals[]" class="form-control"><option value=""><?php echo lang('config_let_system_decide'); ?></option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select></td>'+
		'<td><input type="text" class="form-control" name="currency_exchange_rates_thousands_separator[]" value="," /></td>'+
		'<td><input type="text" class="form-control" name="currency_exchange_rates_decimal_point[]" value="." /></td>'+
		'<td><input type="text" class="form-control" name="currency_exchange_rates_rate[]" value="" /></td>'+
		'<td>&nbsp;</td></tr>');
	});
	
	$(".dbOptimize").click(function(event)
	{
		event.preventDefault();
		$('#ajax-loader').removeClass('hidden');
		
		$.getJSON($(this).attr('href'), function(response) 
		{
			$('#ajax-loader').addClass('hidden');
			bootbox.alert(response.message);
		});
		
	});

	var submitting = false;
	$('#config_form').validate({
		submitHandler:function(form)
		{
			if (submitting) return;
			submitting = true;
			$(form).ajaxSubmit({
			success:function(response)
			{				

				if(response.success)
				{
					show_feedback('success',response.message,<?php echo json_encode(lang('common_success')); ?>);
				}
				else
				{
					show_feedback('error',response.message,<?php echo json_encode(lang('common_error')); ?>);
					
				}
				submitting = false;
			},
			dataType:'json'
		});

		},
		errorClass: "text-danger",
		errorElement: "span",
		highlight:function(element, errorClass, validClass) {
			$(element).parents('.form-group').removeClass('has-success').addClass('has-error');
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parents('.form-group').removeClass('has-error').addClass('has-success');
		},
		rules: 
		{
    		company: "required",
    		sale_prefix: "required",
			return_policy:
			{
				required: true
			},
			item_id_auto_increment:
			{
				number: true,
				min: 1,
				max: 999999999
			},
			item_kit_id_auto_increment:
			{
				number: true,
				min: 1,
				max: 999999999
			},
			sale_id_auto_increment:
			{
				number: true,
				min: 1,
				max: 999999999
			},
			receiving_id_auto_increment:
			{
				number: true,
				min: 1,
				max: 999999999
			}
   		},
		messages: 
		{
     		company: <?php echo json_encode(lang('config_company_required')); ?>,
     		sale_prefix: <?php echo json_encode(lang('config_sale_prefix_required')); ?>,
			return_policy:
			{
				required:<?php echo json_encode(lang('config_return_policy_required')); ?>
			},
	
		}
	});
	
});

$("#offline_mode").change(offline_mode_change).ready(offline_mode_change);

function offline_mode_change()
{
	if($("#offline_mode").prop('checked'))
	{
		$("#force_https").prop('checked', true);
	}	
}

$("#calculate_average_cost_price_from_receivings").change(check_calculate_average_cost_price_from_receivings).ready(check_calculate_average_cost_price_from_receivings);

function check_calculate_average_cost_price_from_receivings()
{
	if($("#calculate_average_cost_price_from_receivings").prop('checked'))
	{
		$("#average_cost_price_from_receivings_methods").show();
		$("#update_cost_price_on_transfer_container").show();
	}
	else
	{
		$("#average_cost_price_from_receivings_methods").hide();
		$("#update_cost_price_on_transfer_container").hide();
		
	}
}

$("#enable_customer_loyalty_system,#loyalty_option").change(check_loyalty_setup).ready(check_loyalty_setup);

function check_loyalty_setup()
{
	if($("#enable_customer_loyalty_system").prop('checked'))
	{
		$("#loyalty_setup").show();
	}
	else
	{
		$("#loyalty_setup").hide();
	}
	
	if ($("#loyalty_option").val() == 'simple')
	{
		$("#loyalty_setup_simple").show();
		$("#loyalty_setup_advanced").hide();
	}
	else
	{
		$("#loyalty_setup_simple").hide();	
		$("#loyalty_setup_advanced").show();	
	}
}

<?php
if ($search = $this->input->get('search')) { ?>
	$("#search").val(<?php echo json_encode($this->input->get('search')); ?>);	
<?php } ?>

$(".config-panel").sieve({
	itemSelector: "div.form-group",
	searchInput: $('#search'),
	complete: function() {

		$(".panel-body").each(function(index) {
			var $this = $(this);
			var $visible_element = $this.find('.form-group').filter(function() 
			{
				return $(this).css('display') != 'none'
			});
			if($visible_element.length == 0)
			{
				$this.closest('.col-md-12').hide();
			}
			else
			{
				$this.closest('.col-md-12').show();
			}

		})
	}
});

$("#search").focus().trigger('keyup');

<?php
$deleted_payment_types = $this->config->item('deleted_payment_types');
$deleted_payment_types = explode(',',$deleted_payment_types);

foreach($deleted_payment_types as $deleted_payment_type)
{
?>
	$( ".payment_types" ).each(function() {
		if ($(this).text() == <?php echo json_encode($deleted_payment_type); ?>)
		{
			$(this).removeClass('btn-primary');			
			$(this).addClass('deleted btn-danger');			
		}
	});
<?php
}
?>
save_deleted_payments();

$(".payment_types").click(function(e)
{
	e.preventDefault();
	$(this).toggleClass('btn-primary');
	$(this).toggleClass('deleted btn-danger');
	save_deleted_payments();
});

function save_deleted_payments()
{
	$(".deleted_payment_types").remove();
	
	var deleted_payment_types = [];
	$( ".payment_types.deleted" ).each(function() {
		deleted_payment_types.push($(this).text());
	});
	$("#config_form").append('<input class="deleted_payment_types" type="hidden" name="deleted_payment_types" value="'+deleted_payment_types.join()+'" />');
	
}

$("#item_lookup_order_list").sortable();

		//delivery stuff
		$("#shipping_zones tbody").sortable();
		
		$('.shipping_zone_zips input').selectize({
			delimiter: '|',
			create: true,
			render: {
		      option_create: function(data, escape) {
					var add_new = <?php echo json_encode(lang('common_add_value')) ?>;
		        return '<div class="create">'+escape(add_new)+' <strong>' + escape(data.input) + '</strong></div>';
		      }
			},
		});

		var zone_index = -1;
		
		$(document).on('click', '.add_shipping_zone', function(e) {
			
			var $tbody = $("#shipping_zones").find("tbody");
			
			$tbody.append('<tr data-index="' + zone_index +'">' +
				'<td class="shipping_zone_name top">' +
					'<input type="text" data-index="-1" class="zones form-control name" name="zones['+ zone_index +'][name]" value="" />' +
				'</td>' +
				'<td class="shipping_zone_zips top">' +
					'<input type="text" data-index="-1" class="zones form-control name" name="zones['+ zone_index +'][zips]" value="" />' +
				'</td>' +
				'<td class="shipping_zone_fee top">' +
					'<input data-index="-1" type="text" class="zones form-control fee" name="zones['+ zone_index +'][fee]" />' +
			'</td>');
			
			$tr = $tbody.find('tr').last();
			
			$tr.find('.shipping_zone_zips input').selectize({
				delimiter: '|',
				create: true,
				render: {
			      option_create: function(data, escape) {
						var add_new = <?php echo json_encode(lang('common_add_value')) ?>;
			        return '<div class="create">'+escape(add_new)+' <strong>' + escape(data.input) + '</strong></div>';
			      }
				},
			});

		});
		$("#shipping_providers tbody").sortable();
		
		var provider_index = -1;
		
		$(document).on('click', '.add_shipping_provider', function(e) {
			var $tbody = $("#shipping_providers").find("tbody");
			
			var rate_index = 0;
			var radio_template = '<input data-index="-1" type="radio" class="methods" id="default_shipping_rate_'+ provider_index +'_0" name="methods['+ provider_index +'][is_default][]" checked="checked">'
			+ '<label class="shipping_table_rate_element" for="default_shipping_rate_'+ provider_index +'_0"><span></span></label>';
			
			$tbody.append('<tr data-index="' + provider_index +'">' +
				'<td class="shipping_provider_name top">' +
					'<input type="text" data-index="-1" class="rates form-control providers" name="providers['+ provider_index +'][name]" value="" />' +
				'</td>' +
				'<td class="delivery_rate_name top">' +
					'<input data-index="-1" data-method-id="-1" type="text" class="rates form-control methods" name="methods['+ provider_index +'][name][]" />' +
				'</td>' +
				'<td class="delivery_fee top">' + 
					'<input type="text" data-index="-1" class="rates form-control methods" name="methods['+ provider_index +'][fee][]" />' +
				'</td>' +
				'<td class="delivery_time top">' +
					'<input type="text" data-index="-1" class="rates form-control methods" name="methods['+ provider_index +'][time_in_days][]" />' +
				'</td>' +
				'<td class="delivery_default top">' + 
					radio_template + 
				'</td>' +
				'<td>' +
					'<a class="delete_rate shipping_table_rate_text_element"><?php echo lang('common_delete'); ?></a>' +
				'</td>' +
				'<td>' +
					'<a href="javascript:void(0);" class="add_delivery_rate"><?php echo lang('config_add_rate'); ?></a>' +
				'</td>' +
				'<td>' +
					'<span class="ui-icon ui-icon-arrowthick-2-n-s"></span>' +
				'</td>' +
			'</tr>');
			
			provider_index -= 1;
		});
		
		$(document).on('click', '.delete_zone', function(e) {
			var $tr = $(this).closest("tr");
			var index = $tr.data('index');
						
			$tr.remove();
			
			if(index > 0)
			{
				$("#config_form").append('<input type="hidden" class="delete_zone" name="zones_to_delete[]" value="'+ index +'" />');
			}
		});
		
		$(document).on('click', '.delete_rate', function(e) {
			var $tr = $(this).closest("tr");
			
			var index = $tr.data('index');
			var rate_index = $tr.find('td.delivery_rate_name > input').length;
			var method_id = parseInt($tr.find('.delivery_rate_name input').last().data('method-id'));
			
			if(rate_index > 1)
			{
				$tr.find('.delivery_rate_name input').last().remove();
				$tr.find('.delivery_fee input').last().remove();
				$tr.find('.delivery_time input').last().remove();
				$tr.find('.delivery_default input').last().remove();
				$tr.find('.delivery_default label').last().remove();
				
				if(method_id > 0)
				{
					$("#config_form").append('<input type="hidden" class="delete_method" name="methods_to_delete[]" value="'+ method_id +'" />');
				}
			}
			else
			{
				
				$tr.remove();
				
				if(method_id > 0)
				{
					$("#config_form").append('<input type="hidden" class="delete_method" name="methods_to_delete[]" value="'+ method_id +'" />');
				}
										
				if(index > 0)
				{
					$("#config_form").append('<input type="hidden" class="delete_provider" name="providers_to_delete[]" value="'+ index +'" />');
				}
			}
		});
		
		$(document).on('click', '.add_delivery_rate', function(e) {
				var $tr = $(this).closest("tr");
				var index = $tr.data('index');
				var rate_index = $tr.find('td.delivery_rate_name > input').length;
																				
				$tr.find('.delivery_rate_name').append('<input data-index="-1" type="text" data-method-id="-1" class="rates form-control methods" name="methods['+ index +'][name][]" >');
				$tr.find('.delivery_fee').append('<input data-index="-1" type="text" class="rates form-control methods" name="methods['+ index +'][fee][]" >');
				$tr.find('.delivery_time').append('<input data-index="-1" type="text" class="rates form-control methods" name="methods['+ index +'][time_in_days][]" >');
				
				var radio_template = '<input data-index="-1" type="radio" class="methods" id="default_shipping_rate_'+ index +"_"+ rate_index + '" name="methods['+ index +'][is_default][]">'
				+ '<label class="shipping_table_rate_element" for="default_shipping_rate_'+ index +"_"+ rate_index + '"><span></span></label>';
				
				$tr.find('.delivery_default').append(radio_template);
												
			});

			$("#verify_age_for_products").click(function()
			{
				if ($('#verify_age_for_products').prop('checked'))
				{
					$("#default_age_input_container").removeClass('hidden');	
					$("#strict_age_format_check_container").removeClass('hidden');
				}
				else
				{
					$("#default_age_input_container").addClass('hidden');
					$("#strict_age_format_check_container").addClass('hidden');
				}
	
			});

</script>
<?php $this->load->view("partial/footer"); ?>
