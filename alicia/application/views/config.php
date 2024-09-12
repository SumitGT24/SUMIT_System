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
