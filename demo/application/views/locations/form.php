<?php $this->load->view("partial/header"); ?>

	<?php echo form_open_multipart('locations/save/' . $location_info->location_id, array('id' => 'location_form', 'class' => 'form-horizontal', 'autocomplete' => 'off')); ?>
	<div class="row" id="form">

		<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="ion-edit"></i>
						<?php echo lang("locations_basic_information"); ?>
						<small>(<?php echo lang('common_fields_required_message'); ?>)</small>
					</h3>
				</div>

				<div class="panel-body">

					<div class="form-group">
						<?php echo form_label(lang('locations_name') . ':', 'name', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(
								array(
									'class' => 'form-control form-inps',
									'name' => 'name',
									'id' => 'name',
									'value' => $location_info->name
								)
							); ?>
						</div>
					</div>

					<div class="form-group">
						<?php echo form_label(lang('locations_color') . ':', 'name', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<?php echo form_input(
								array(
									'class' => 'form-control form-inps',
									'name' => 'color',
									'id' => 'color',
									'value' => $location_info->color
								)
							); ?>
						</div>
					</div>

					<div class="form-group">
						<?php echo form_label('api_key' . ':', 'api_key', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class' => 'validate form-control form-inps',
								'name' => 'api_key',
								'id' => 'api_key',
								'value' => $location_info->api_key
							)); ?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('nit' . ':', 'nit', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class' => 'validate form-control form-inps',
								'name' => 'nit',
								'id' => 'nit',
								'value' => $location_info->nit
							)); ?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Razón social' . ':', 'razon_social', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class' => 'validate form-control form-inps',
								'name' => 'razon_social',
								'id' => 'razon_social',
								'value' => $location_info->razon_social
							)); ?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Número de establecimiento' . ':', 'number_establecimiento', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class' => 'validate form-control form-inps',
								'name' => 'number_establecimiento',
								'id' => 'number_establecimiento',
								'value' => $location_info->number_establecimiento
							)); ?>
						</div>
					</div>

					<div class="form-group">
						<?php echo form_label('Tipo contribuyente' . ':', 'Tipo contribuyente', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class' => 'validate form-control form-inps',
								'name' => 'tipo_contribuyente',
								'id' => 'tipo_contribuyente',
								'placeholder' => '0: Pequeño contribuyente, 1: Contribuyente general',
								'value' => $location_info->tipo_contribuyente
							)); ?>
						</div>
					</div>

					<div class="form-group">
						<?php echo form_label('municipio' . ':', 'municipio', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class' => 'validate form-control form-inps',
								'name' => 'municipio',
								'id' => 'municipio',
								'value' => $location_info->municipio
							)); ?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('departamento' . ':', 'departamento', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10 input-field">
							<?php echo form_input(array(
								'class' => 'validate form-control form-inps',
								'name' => 'departamento',
								'id' => 'departamento',
								'value' => $location_info->departamento
							)); ?>
						</div>
					</div>

					<div class="form-group">
						<?php echo form_label(lang('locations_address') . ':', 'address', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label required')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">

							<?php echo form_textarea(array(
								'name' => 'address',
								'id' => 'address',
								'class' => 'form-control text-area',
								'rows' => '4',
								'cols' => '30',
								'value' => $location_info->address
							)); ?>
						</div>
					</div>
						<!-- Agregar empleados -->
					<div class="form-group">
						<?php echo form_label(lang('reports_employees') . ':', 'employees', array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
						<div class="col-sm-9 col-md-9 col-lg-10">
							<select class="form-control" name="employees[]" id="employees" multiple>
								<?php
								foreach ($employees as $person_id => $employee) {
									$selected = ($employee['has_access'] == true) ? 'selected' : '';
									echo '<option value="' . $person_id . '" ' . $selected . '> ' . H($employee['name']) . '</option>';
								}
								?>
							</select>
						</div>
					</div>
					<!--Cajas registradoras-->
					<div class="form-group add-register-table">
						<div class="spinner" id="grid-loader" style="display:none">
							<div class="rect1"></div>
							<div class="rect2"></div>
							<div class="rect3"></div>
						</div>

						<?php echo form_label(lang('locations_registers') . ':', null, array('class' => 'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
						<div class="table-responsive m-lr-15">
							<table id="price_registers" class="table">
								<thead>
									<tr>
										<th><?php echo lang('common_register_name'); ?></th>
										<th class="card_connect_hsn register-cc-field"><?php echo lang('locations_card_connect_hsn'); ?></th>
										<th class="emv_terminal_id register-cc-field"><?php echo lang('locations_terminal_id'); ?></th>
										<th class="register-cc-field"><?php echo lang('locations_ip_tran_device_id'); ?></th>
										<th class="register-cc-field"><?php echo lang('locations_pinpad_ip'); ?></th>
										<th class="register-cc-field"><?php echo lang('locations_pinpad_port'); ?></th>
										<th class="register-cc-field"><?php echo lang('locations_card_reader_actions'); ?></th>
										<th><?php echo lang('common_delete'); ?></th>
									</tr>
								</thead>

								<tbody>
									<?php
									$counter = 0;
									foreach ($registers->result() as $register) { ?>
										<tr>
											<td><input type="text" class="form-control" name="registers_to_edit[<?php echo $register->register_id; ?>][name]" value="<?php echo H($register->name); ?>" /></td>

											<td><input id="card_connect_hsn_<?php echo $counter; ?>" type="text" class="form-control card_connect_hsn register-cc-field" name="registers_to_edit[<?php echo $register->register_id; ?>][card_connect_hsn]" value="<?php echo H($register->card_connect_hsn); ?>" /></td>
											<td><input id="terminal_id_<?php echo $counter; ?>" type="text" class="form-control emv_terminal_id register-cc-field" name="registers_to_edit[<?php echo $register->register_id; ?>][emv_terminal_id]" value="<?php echo H($register->emv_terminal_id); ?>" /></td>
											<td><input type="text" class="form-control iptran register-cc-field" name="registers_to_edit[<?php echo $register->register_id; ?>][iptran_device_id]" value="<?php echo H($register->iptran_device_id); ?>" /></td>
											<td><input id="pinpad_ip_<?php echo $counter; ?>" type="text" class="form-control emv_pinpad_ip register-cc-field" name="registers_to_edit[<?php echo $register->register_id; ?>][emv_pinpad_ip]" value="<?php echo H($register->emv_pinpad_ip); ?>" /></td>
											<td><input id="pinpad_port_<?php echo $counter; ?>" type="text" class="form-control emv_pinpad_port register-cc-field" name="registers_to_edit[<?php echo $register->register_id; ?>][emv_pinpad_port]" value="<?php echo H($register->emv_pinpad_port); ?>" /></td>
											<td>
												<a class="update_parameters_ip_tran register-cc-field" href="javascript:void(0);"><?php echo lang('locations_update_params_ip_tran'); ?></a><span class="register-cc-field"> / </span>
												<a class="init_ip_tran register-cc-field" href="javascript:void(0);"><?php echo lang('locations_init_mercury_emv'); ?></a>
												<?php if ((!defined("ENVIRONMENT") or ENVIRONMENT == 'development')) { ?>
													<span class="register-cc-field"> / </span><a class="test_mode_ip_tran register-cc-field" href="javascript:void(0);"><?php echo lang('common_test_mode'); ?></a>
												<?php } ?>
											</td>
											<td>
												<a class="delete_register" href="javascript:void(0);" data-register-id='<?php echo $register->register_id; ?>'><?php echo lang('common_delete'); ?></a>
											</td>
										</tr>
									<?php
										$counter++;
									}
									?>
								</tbody>
							</table>
							<a href="javascript:void(0);" id="add_register"><?php echo lang('locations_add_register'); ?></a>
						</div>
					</div>


					<?php echo form_hidden('redirect', $redirect); ?>

					<div class="form-actions pull-right">
						<?php

						echo form_submit(
							array(
								'name' => 'submitf',
								'id' => 'submitf',
								'value' => lang('common_save'),
								'class' => 'submit_button floating-button btn btn-lg btn-primary'
							)
						);
						?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php echo form_close(); ?>


<script type='text/javascript'>
	var submitting = false;
	var add_register_index = 0;
	//validation and submit handling
	$(document).ready(function() {
		//Turn on Credit card processing if we type in IP Tran
		$(document).on('keyup', ".iptran", function() {
			var is_ip_tran_on = false;

			$(".iptran").each(function(index) {
				if ($(this).val() != '') {
					is_ip_tran_on = true;
				}
			});

			if (is_ip_tran_on && !$("#enable_credit_card_processing").prop('checked')) {
				$("#enable_credit_card_processing").click();
			}

			check_ip_tran_init();
		});

		check_ip_tran_init();

		function check_ip_tran_init() {
			var hide_init = false;

			$(".iptran").each(function() {
				if ($(this).val()) {
					hide_init = true;
				}
			});

			if (hide_init) {
				$("#init_mercury_emv_wrapper").hide();
			} else {
				$("#init_mercury_emv_wrapper").show();
			}
		}

		$(document).on('click', '.update_parameters_ip_tran', function() {
			var emv_merchant_id = $("#emv_merchant_id").val();
			var ip_tran_id = $(this).parent().prev().find('.iptran').val();
			$("#grid-loader").show();

			$.post('<?php echo site_url("locations/mercury_ip_tran_update_parameters"); ?>', {
				device_id: ip_tran_id,
				merchant_id: emv_merchant_id
			}, function(response) {
				show_feedback(response.success ? 'success' : 'error', response.message, response.success ? <?php echo json_encode(lang('common_success')); ?> : <?php echo json_encode(lang('common_error')); ?>);
				$("#grid-loader").hide();
			}, 'json');
		});


		$(document).on('click', '.init_ip_tran', function() {
			var emv_merchant_id = $("#emv_merchant_id").val();
			var ip_tran_id = $(this).parent().prev().find('.iptran').val();
			$("#grid-loader").show();

			$.post('<?php echo site_url("locations/mercury_ip_tran_emv_param_download"); ?>', {
				device_id: ip_tran_id,
				merchant_id: emv_merchant_id
			}, function(response) {
				show_feedback(response.success ? 'success' : 'error', response.message, response.success ? <?php echo json_encode(lang('common_success')); ?> : <?php echo json_encode(lang('common_error')); ?>);
				$("#grid-loader").hide();
			}, 'json');
		});

		$(document).on('click', '.test_mode_ip_tran', function() {
			var emv_merchant_id = $("#emv_merchant_id").val();
			var ip_tran_id = $(this).parent().prev().find('.iptran').val();
			$("#grid-loader").show();

			$.post('<?php echo site_url("locations/mercury_ip_tran_emv_test_mode"); ?>', {
				device_id: ip_tran_id,
				merchant_id: emv_merchant_id
			}, function(response) {
				show_feedback(response.success ? 'success' : 'error', response.message, response.success ? <?php echo json_encode(lang('common_success')); ?> : <?php echo json_encode(lang('common_error')); ?>);
				$("#grid-loader").hide();
			}, 'json');
		});

		$(document).on('keyup', "#emv_merchant_id", function() {
			check_emv_merchant_id();

		});
		check_emv_merchant_id();


		function check_emv_merchant_id() {
			if ($("#emv_merchant_id").val() != '') {
				$("#init_mercury_emv_wrapper").show();
			} else {
				$("#init_mercury_emv_wrapper").hide();
			}
		}

		$("#locations_init_mercury_emv").click(function() {
			$("#ajax-loader").show();
			$("#locations_init_mercury_emv").hide();

			var credit_card_processor = $("#credit_card_processor").val();
			var emv_merchant_id = $("#emv_merchant_id").val();
			var com_port = $("#com_port").val();
			var listener_port = $("#listener_port").val();
			var net_e_pay_server = $("#net_e_pay_server").val();
			var secure_device_override_emv = $('#secure_device_override_emv').val();
			var secure_device_override_non_emv = $('#secure_device_override_non_emv').val();
			var terminal_id_0 = $("#terminal_id_0").val();
			var ebt_integrated = $("#ebt_integrated").prop('checked') ? 1 : 0;
			var integrated_gift_cards = $("#integrated_gift_cards").prop('checked') ? 1 : 0;

			$.post('<?php echo site_url("locations/save_emv_data/" . $location_info->location_id); ?>', {
				ebt_integrated: ebt_integrated,
				terminal_id: terminal_id_0,
				secure_device_override_emv: secure_device_override_emv,
				secure_device_override_non_emv: secure_device_override_non_emv,
				credit_card_processor: credit_card_processor,
				emv_merchant_id: emv_merchant_id,
				com_port: com_port,
				listener_port: listener_port,
				net_e_pay_server: net_e_pay_server,
				integrated_gift_cards: integrated_gift_cards
			}, function(response) {

				if (response.success) {
					var emv_param_download_init_params = response.emv_param_download_init_params;

					emv_param_download_init_params['post_data']['ComPort'] = com_port;
					emv_param_download_init_params['post_data']['MerchantID'] = emv_merchant_id;

					terminal_id_0 = $("#terminal_id_0").val();

					if (terminal_id_0) {
						emv_param_download_init_params['post_data']['TerminalID'] = terminal_id_0;
					}

					emv_param_download(emv_param_download_init_params['post_host'], listener_port, emv_param_download_init_params.post_data, <?php echo json_encode(lang('locations_init_device_success')); ?>, <?php echo json_encode(lang('locations_unable_to_init_device')); ?>, function() {
						$("#ajax-loader").hide();
						$("#locations_init_mercury_emv").show();
					});
				} else {
					$("#ajax-loader").hide();
					$("#locations_init_mercury_emv").show();
				}
			}, 'json');
		});

		$('#employees').selectize();

		$('#cc_email').selectize({
			delimiter: ',',
			persist: false,
			create: function(input) {
				return {
					value: input,
					text: input
				}
			}
		});

		$('#bcc_email').selectize({
			delimiter: ',',
			persist: false,
			create: function(input) {
				return {
					value: input,
					text: input
				}
			}
		});

		$('#color').colorpicker();

		$(".delete_register").click(function() {
			$("#location_form").append('<input type="hidden" name="registers_to_delete[]" value="' + $(this).data('register-id') + '" />');
			$(this).parent().parent().remove();
		});

		$("#add_register").click(function() {
			$("#price_registers tbody").append('<tr><td><input type="text" class="registers_to_add form-control" name="registers_to_add[' + add_register_index + '][name]" value="" /></td><td><input type="text" class="registers_to_add form-control register-cc-field" name="registers_to_add[' + add_register_index + '][card_connect_hsn]" value="" /></td><td><input type="text" class="registers_to_add form-control register-cc-field" name="registers_to_add[' + add_register_index + '][emv_terminal_id]" value="" /></td><td><input type="text" class="registers_to_add form-control iptran register-cc-field" name="registers_to_add[' + add_register_index + '][iptran_device_id]" value="" /></td><td><input type="text" class="registers_to_add form-control iptran register-cc-field" name="registers_to_add[' + add_register_index + '][emv_pinpad_ip]" value="" /></td><td><input type="text" class="registers_to_add form-control iptran register-cc-field" name="registers_to_add[' + add_register_index + '][emv_pinpad_port]" value="" /></td><td><a class="update_parameters_ip_tran register-cc-field" href="javascript:void(0);"><?php echo lang('locations_update_params_ip_tran'); ?></a><span class="register-cc-field"> / </span><a class="init_ip_tran register-cc-field" href="javascript:void(0);"><?php echo lang('locations_init_mercury_emv'); ?></a> </td><td>&nbsp;</td></tr>');
			register_cc_fields_show_hide();
			add_register_index++;
		});


		if ($("#location_form_auth").length == 1) {
			setTimeout(function() {
				$(":input:visible:first", "#location_form_auth").focus();
			}, 100);
		} else {
			setTimeout(function() {
				$(":input:visible:first", "#location_form").focus();
			}, 100);
		}
		var submitting = false;
		$('#location_form').validate({
			submitHandler: function(form) {
				if (submitting) return;
				submitting = true;
				$('#grid-loader').show();
				$(form).ajaxSubmit({
					success: function(response) {
						//Don't let the registers be double submitted, so we change the name
						$(".registers_to_add").attr('name', 'registers_added[]');

						$('#grid-loader').hide();
						submitting = false;
						show_feedback(response.success ? 'success' : 'error', response.message, response.success ? <?php echo json_encode(lang('common_success')); ?> + ' #' + response.location_id : <?php echo json_encode(lang('common_error')); ?>);


						if (response.redirect == 2 && response.success) {
							window.location.href = '<?php echo site_url('locations'); ?>';
						} else {
							$("html, body").animate({
								scrollTop: 0
							}, "slow");
							$(".form-group").removeClass('has-success has-error');
						}

					},
					<?php if (!$location_info->location_id) { ?>
						resetForm: true,
					<?php } ?>
					dataType: 'json',
				});
			},
			ignore: '',
			errorClass: "text-danger",
			errorElement: "p",
			errorPlacement: function(error, element) {
				error.insertBefore(element);
			},
			highlight: function(element, errorClass, validClass) {
				$(element).parents('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight: function(element, errorClass, validClass) {
				$(element).parents('.form-group').removeClass('has-error').addClass('has-success');
			},
			rules: {
				name: {
					required: true,
				},
				phone: {
					required: true
				},
				address: {
					required: true
				},
				timezone: {
					required: true
				},
				"employees[]": "required"

			},
			messages: {
				name: {
					required: <?php echo json_encode(lang('locatoins_name_required')); ?>,

				},
				phone: {
					required: <?php echo json_encode(lang('locations_phone_required')); ?>,
					number: <?php echo json_encode(lang('locations_phone_valid')); ?>
				},
				address: {
					required: <?php echo json_encode(lang('locations_address_required')); ?>
				},
				timezone: {
					required: <?php echo json_encode(lang('locations_timezone_required_field')); ?>
				},
				"employees[]": <?php echo json_encode(lang('locations_one_employee_required')); ?>

			}
		});

		$("#enable_credit_card_processing").change(check_enable_credit_card_processing).ready(check_enable_credit_card_processing);

		$("#credit_card_processor").change(check_credit_card_processor).ready(check_credit_card_processor);

		function check_enable_credit_card_processing() {
			register_cc_fields_show_hide();

			if ($("#enable_credit_card_processing").prop('checked')) {
				$("#merchant_information").show();
			} else {
				$("#merchant_information").hide();
			}

		}

		function register_cc_fields_show_hide() {
			if ($("#enable_credit_card_processing").prop('checked')) {
				$(".register-cc-field").show();
			} else {
				$(".register-cc-field").hide();
			}
		}

		function check_credit_card_processor() {
			var cc_processor = $("#credit_card_processor").val();
			if (cc_processor == 'mercury') {
				$("#emv_info").show();
				$("#mercury_hosted_checkout_info").show();
				$("#stripe_info").hide();
				$("#braintree_info").hide();
				$("#square_info").hide();
				$("#card_connect_info").hide();
			} else if (cc_processor == 'heartland' || cc_processor == 'evo' || cc_processor == 'worldpay' || cc_processor == 'firstdata' || cc_processor == 'other_usb') {
				$("#emv_info").show();
				$("#mercury_hosted_checkout_info").hide();
				$("#stripe_info").hide();
				$("#braintree_info").hide();
				$("#square_info").hide();
				$("#card_connect_info").hide();

			} else if (cc_processor == 'stripe') {
				$("#emv_info").hide();
				$("#mercury_hosted_checkout_info").hide();
				$("#stripe_info").show();
				$("#braintree_info").hide();
				$("#square_info").hide();
				$("#card_connect_info").hide();
			} else if (cc_processor == 'braintree') {
				$("#emv_info").hide();
				$("#mercury_hosted_checkout_info").hide();
				$("#stripe_info").hide();
				$("#braintree_info").show();
				$("#square_info").hide();
				$("#card_connect_info").hide();
			} else if (cc_processor == 'square') {
				$("#square_info").show();
				$("#emv_info").hide();
				$("#mercury_hosted_checkout_info").hide();
				$("#stripe_info").hide();
				$("#braintree_info").hide();
				$("#card_connect_info").hide();
			} else if (cc_processor == 'card_connect') {
				$("#card_connect_info").show();
				$("#square_info").hide();
				$("#emv_info").hide();
				$("#mercury_hosted_checkout_info").hide();
				$("#stripe_info").hide();
				$("#braintree_info").hide();
			}
		}

		$("#receive_stock_alert").change(check_enable_stock_alert).ready(check_enable_stock_alert);

		function check_enable_stock_alert() {
			if ($("#receive_stock_alert").prop('checked')) {
				$("#stock_alert_email_container").show();
				$("#stock_alerts_just_order_level_container").show();
			} else {
				$("#stock_alert_email_container").hide();
				$("#stock_alerts_just_order_level_container").hide();
			}

		}

	});

	$(".override_default_tax_checkbox").change(function() {
		$(this).parent().parent().next().toggleClass('hidden')
	});
</script>

<?php $this->load->view('partial/footer'); ?>