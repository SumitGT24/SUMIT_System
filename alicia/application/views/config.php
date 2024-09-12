<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>


<div class="manage_buttons buttons-list config-page container">
<!--Barra de navegacion-->

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="./configs/companyinfo.php">Información de la empresa</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Buscar</button>
    </form>
  </div>
</nav> 
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
		<!--Boton de guardado-->
	<div class="form-actions">
		<?php echo form_submit(array(
			'name'=>'submitf',
			'id'=>'submitf',
			'value'=>lang('common_save'),
			'class'=>'submit_button floating-button btn btn-primary btn-lg pull-right')); ?>
		</div>
	<!--Fin de formulario-->
	<?php echo form_close(); ?>	
	</div>
		
<?php $this->load->view("partial/footer"); ?>
