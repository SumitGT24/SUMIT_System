<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>
<!-- Barra de navegación -->
<nav class="navbar navbar-default">
	<div class="container-fluid">
	    <ul class="nav navbar-nav">
			<li class="active"><a href="<?php echo site_url('configs/companyinfo'); ?>" class="load-content" data-target="companyinfo">Información de la empresa</a></li>
	        <li><a href="<?php echo site_url('configs/page1'); ?>" class="load-content" data-target="page1">Formas de pago</a></li>
	        <li><a href="<?php echo site_url('configs/page2'); ?>" class="load-content" data-target="page2">Page 2</a></li>
	    </ul>
	    <form class="navbar-form navbar-left" action="/action_page.php">
	        <div class="form-group">
	            <input type="text" class="form-control" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-primary btn-lg">Buscar</button>
	    </form>
	</div>
</nav>

<!-- Panel donde se cargará el contenido -->
<div id="config-panel">
	<?php $this->load->view("configs/companyinfo"); // Vista predeterminada ?>
</div>

<!-- Botón de guardado (si es necesario mantenerlo) -->
<div class="form-actions">
    <?php echo form_open_multipart('config/save/', array('id' => 'config_form', 'class' => 'form-horizontal', 'autocomplete' => 'off')); ?>
    <!-- Botón de guardado -->
    <?php echo form_submit(array(
        'name' => 'submitf',
        'id' => 'submitf',
        'value' => lang('common_save'),
        'class' => 'submit_button floating-button btn btn-primary btn-lg pull-right'
    )); ?>
    <?php echo form_close(); ?>
</div>

<?php $this->load->view("partial/footer"); ?>