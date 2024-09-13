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
			</div
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

<!--#?php $this->load->view("partial/footer"); ?>
