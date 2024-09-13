<?php
$this->load->view("partial/header"); 
$this->load->helper('demo');
$this->load->helper('update');
?>

<!-- Pestañas -->
<button class="tablink" onclick="openPage('CompanyInfo', this)" id="defaultOpen">Información de la empresa</button>
<button class="tablink" onclick="openPage('PaymentMethods', this)">Formas de pago</button>
<button class="tablink" onclick="openPage('PriceRules', this)">Reglas de precios</button>

<?php echo form_open_multipart('config/save/', array('id' => 'config_form', 'class' => 'form-horizontal', 'autocomplete' => 'off')); ?>
	<!-- Informacion de la empresa-->
	<div id="CompanyInfo" class="tabcontent">
	  <p>Loading1...</p>
	</div>

	<!-- Formas de pago -->
	<div id="PaymentMethods" class="tabcontent">
	  <p>Loading1...</p>
	</div>

	<!-- Reglas de precios -->
	<div id="Page2" class="tabcontent">
	  <p>Loading1...</p>
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
