<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>

<div class="manage_buttons buttons-list config-page container">
    <!-- Barra de navegación -->
	<nav class="navbar navbar-inverse navbar-expand-lg">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li class="active"><a href="/configs/companyinfo.php" class="load-content">Información de la empresa</a></li>
            <li><a href="configs/page1.php" class="load-content">Page 1</a></li>
            <li><a href="configs/page2.php" class="load-content">Page 2</a></li>
        </ul>
        <form class="navbar-form navbar-left" action="/action_page.php">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Buscar</button>
        </form>
    </div>
</nav>

<!-- Panel donde se cargará el contenido -->
<div class="config-panel" id="config-panel" style="min-height: 400px; padding: 20px; background-color: #f7f7f7;">
    <!-- El contenido cargado dinámicamente se mostrará aquí -->
	<!-- Company Information -->
	<!-- call configs/companyinfo.php file-->
	<?php $this->load->view("configs/companyinfo"); ?>
</div>

<div class="text-center location-settings">
    <?php 
    echo lang('config_looking_for_location_settings') . ' ' . anchor(
        $this->Location->count_all() > 1 ? 'locations' : 'locations/view/1', 
        lang('module_locations') . ' ' . lang('config_module'), 
        'class="btn btn-info"'
    );
    ?>
</div>

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
</div>

<?php $this->load->view("partial/footer"); ?>

