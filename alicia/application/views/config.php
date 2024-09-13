<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>

<!-- Pestañas -->
<button class="tablink" onclick="openPage('CompanyInfo', this,c)" id="defaultOpen">Información de la empresa</button>
<button class="tablink" onclick="openPage('PaymentMethods', this)">Formas de pago</button>
<button class="tablink" onclick="openPage('PriceRules', this)">Reglas de precios</button>
<button class="tablink" onclick="openPage('Order&Delivery', this)">Ordenes y Entregas</button>
<button class="tablink" onclick="openPage('Sales', this)">Ventas</button>
<button class="tablink" onclick="openPage('Receipts', this,'white')">Recibos</button>
<?php echo form_open_multipart('config/save/', array('id' => 'config_form', 'class' => 'form-horizontal', 'autocomplete' => 'off')); ?>
	<!-- Informacion de la empresa-->
	<div id="CompanyInfo" class="tabcontent">
		<div class="panel panel-piluku">
			<!--Logo de la empresa-->
			<div class="panel-body">
				<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_company')) ?>">	
					<?php echo form_label(lang('common_company_logo').':', 'company_logo',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
					<div class="col-sm-9 col-md-9 col-lg-10">						
						<input type="file" name="company_logo" id="company_logo" class="filestyle" data-icon="false">  	
					</div>	
				</div>
				<!-- Eliminar logo -->
				<div class="form-group" data-keyword="<?php echo H(lang('config_keyword_company')) ?>">	
					<?php echo form_label(lang('common_delete_logo').':', 'delete_logo',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
					<div class="col-sm-9 col-md-9 col-lg-10">
						<?php echo form_checkbox('delete_logo', '1', null,'id="delete_logo"');?>
						<label for="delete_logo"><span></span></label>
					</div>	
				</div>
				<!-- Nombre de la empresa -->
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
				<!--website-->
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

	<!-- Formas de pago -->
	<div id="PaymentMethods" class="tabcontent">
		<div class="panel panel-piluku">
			<div class="panel-body">
				<!-- Botones formas de pago -->			
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
							'value'=>$this->config->item('additional_payment_types')));
						?>
					</div>
				</div>				
				<!-- Metodo de pago predeterminado -->
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

	<!-- Reglas de precios -->
	<div id="PriceRules" class="tabcontent">
		<div class="panel panel-piluku">
			<div class="panel-body">
				<!-- Deshabilitar dialogo de reglas de precios -->
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
					
	<!-- Ordenes y entregas -->
	<div id="Order&Delivery" class="tabcontent">
		<div class="panel panel-piluku">
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
	</div>
	
	<!-- Ventas -->
	<div id="Sales" class="tabcontent">
		<div class="panel panel-piluku">
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

	<!--Recibos-->
	<div id="Receipts" class="tabcontent">
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
	<!--Controlar animaciones de pestañas-->
	<script>
	function openPage(pageName, elmnt, color) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }

	  // Remove the background color of all tablinks/buttons
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].style.backgroundColor = "";
	  }

	  // Show the specific tab content
	  document.getElementById(pageName).style.display = "block";

	  // Add the specific color to the button used to open the tab content
	  elmnt.style.backgroundColor = color;
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click(); 
	</script>
	<!-- Botón de guardado (si es necesario mantenerlo) -->
	<div class="form-actions">
		<!-- Botón de guardado -->
	    <?php echo form_submit(array(
	        'name' => 'submitf',
	        'id' => 'submitf',
	        'value' => lang('common_save'),
	        'class' => 'submit_button floating-button btn btn-primary btn-lg pull-right'
	    )); ?>
	</div>
<?php $this->load->view("partial/footer"); ?>
<?php echo form_close(); ?>
