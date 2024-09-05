<!DOCTYPE html>
<html>
<head>
    <title><?php 
		$this->load->helper('demo');
		echo !is_on_demo_host() ?  $this->config->item('company').' - '.' Ventas e Inventarios' : 'SOF' ?></title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <base href="<?php echo base_url();?>" />
    <link rel="icon" href="<?php echo base_url();?>favicon.ico" type="image/x-icon"/>
 	
		<?php 
		$this->load->helper('assets');
		foreach(get_css_files() as $css_file) { ?>
 			<link rel="stylesheet" type="text/css" href="<?php echo base_url().$css_file['path'].'?'.ASSET_TIMESTAMP;?>" />
 		<?php } ?>

    <script src="<?php echo base_url();?>assets/js/jquery.js?<?php echo ASSET_TIMESTAMP; ?>" type="text/javascript" language="javascript" charset="UTF-8"></script>
    <style type="text/css">
        body
        {
            padding: 5px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function()
        {
            //If we have an empty username focus
            if ($("#username").val() == '')
            {
                $("#username").focus();                   
            }
            else
            {
                $("#password").focus();
            }
				
				$(".checkForUpdate").click(function(event)
				{
					event.preventDefault();
					$('#spin').removeClass('hidden');
		
					$.getJSON($(this).attr('href'), function(update_available) 
					{
						$('#spin').addClass('hidden');
						if(update_available)
						{
							$(".checkForUpdate").parent().html(<?php echo json_encode(lang('common_update_available').' <a href="http://phppointofsale.com/downloads.php" target="_blank">'.lang('common_download_now').'</a>');?>);
						}
						else
						{
							$(".checkForUpdate").parent().html(<?php echo json_encode(lang('common_not_update_available')); ?>);
						}
					});
		
				});
		});
		
		
    </script>
	
</head>
<body>	
	
		<?php
		if(isset($announcement))
		{
		?>
     <div class="text-center">
				<?php echo $announcement; ?>
			</div>
		<?php
		}
		?>
    
    <div class="flip-container">
        <div class="flipper">
            <div class="front">
                <!-- front content -->
                <div class="holder">
                    <?php if ($ie_browser_warning) { ?>
		                 <div class="holder">
                        <div class="alert alert-danger">
                           <strong><?php echo lang('login_unsupported_browser');?></strong>
                        </div>
								<br />
								<br />
							</div>
                    <?php
                    } ?>
                              

                    <div class="heading login-logo">
                        <?php echo img(array('src' => $this->Appconfig->get_logo_image())); ?>
                    </div> 
                    <?php echo form_open('login?continue='.rawurlencode($this->input->get('continue')), array('class' => 'form login-form', 'id'=>'loginform', 'autocomplete'=> 'off')) ?>            
                        <h1>Iniciar sesión en SUMIT</h1>
                        <?php if (validation_errors()) {?>
                        <div class="alert alert-danger">
                            <strong><?php echo lang('common_error'); ?></strong>
                            <?php echo validation_errors(); ?>
                        </div>
                        <?php } ?>
                        <?php echo form_input(array(
                            'name'=>'username', 
                            'id'=>'username', 
                            'value'=> $username,
                            'class'=> 'form-control',
                            'placeholder'=> lang('login_username'),
                            'size'=>'20')); 
                        ?>

                        <?php echo form_password(array(
                            'name'=>'password', 
                            'id' => 'password',
                            'value'=>$password,
                            'class'=>'form-control',
                            'placeholder'=> lang('login_password'),
                            'size'=>'20')); 
                        ?>
                
                        <div class="clearfix"></div>
                        <button type="submit" class="btn btn-primary btn-block"><?php echo lang('login_login'); ?></button>
                    <?php echo form_close() ?>  
                    <div class="version">
                        <p>
                            <a href="<?php echo site_url('login/reset_password')?>"><h5>¿Olvidaste tu contraseña?</h5></a>
                            <a href="https://api.whatsapp.com/send/?phone=50247192667&text&type=phone_number&app_absent=0" target="_blank"><h5>Soporte técnico</h5></a> </span> 
                        </p>							                   											              						
                    </div>                
                </div>
            </div>          
        </div>      
    </div>
</body>
<?php if ($this->input->get('demologin')) { ?>
<script>	
	$("#loginform").submit();
</script>
	<?php } ?>
</html>