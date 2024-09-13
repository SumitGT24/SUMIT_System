<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>

<!-- Pestañas -->
	 <button class="tablink" onclick="openPage('CompanyInfo', this, 'red')" id="defaultOpen">Información de la empresa</button>
	 <button class="tablink" onclick="openPage('PaymentMethods', this, 'green')">Formas de pago</button>
	 <button class="tablink" onclick="openPage('Page2', this, 'blue')">Page 2</button>

<?php echo form_open_multipart('config/save/', array('id' => 'config_form', 'class' => 'form-horizontal', 'autocomplete' => 'off')); ?>
<!-- Contenido de pestañas -->
<div id="CompanyInfo" class="tabcontent">
	<div class="panel panel-piluku">
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
</div>

<div id="PaymentMethods" class="tabcontent">
  <!-- Aquí se cargará el contenido de formas de pago (page1.php) -->

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
</div>

<div id="Page2" class="tabcontent">
  <!-- Aquí se cargará el contenido de page2.php -->
  <p>Loading...</p>
</div>
<!--Controlar animaciones de pestañas-->
<script>
function openPage(pageName, element, color) {
  // Esconder todo el contenido de las pestañas
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Remover la clase "active" de todos los botones
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }

  // Mostrar el contenido de la pestaña actual y cambiar el color del botón
  document.getElementById(pageName).style.display = "block";
  element.style.backgroundColor = color;

}

// Clic en el botón predeterminado al cargar la página
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
<?php echo form_close(); ?>
<?php $this->load->view("partial/footer"); ?>
