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

		
<?php $this->load->view("partial/footer"); ?>
