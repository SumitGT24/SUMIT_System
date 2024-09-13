<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>

<!-- Pestañas -->
<button class="tablink" onclick="openPage('CompanyInfo', this, 'red')" id="defaultOpen">Información de la empresa</button>
<button class="tablink" onclick="openPage('PaymentMethods', this, 'green')">Formas de pago</button>
<button class="tablink" onclick="openPage('Page2', this, 'blue')">Page 2</button>

<!-- Contenido de pestañas -->
<div id="CompanyInfo" class="tabcontent">
  <!-- Aquí se cargará la vista companyinfo.php -->
  <?php $this->load->view("configs/companyinfo"); ?>
</div>

<div id="PaymentMethods" class="tabcontent">
  <!-- Aquí se cargará el contenido de formas de pago (page1.php) -->
  <p>Loading...</p>
</div>

<div id="Page2" class="tabcontent">
  <!-- Aquí se cargará el contenido de page2.php -->
  <p>Loading...</p>
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
