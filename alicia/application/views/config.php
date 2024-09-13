<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>

<!-- Pestañas -->
<button class="tablink" onclick="openPage('CompanyInfo', this)" id="defaultOpen">Información de la empresa</button>
<button class="tablink" onclick="openPage('PaymentMethods', this)">Formas de pago</button>
<button class="tablink" onclick="openPage('PriceRules', this)">Reglas de precios</button>
<button class="tablink" onclick="openPage('Order&Delivery', this)">Ordenes y Entregas</button>
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
