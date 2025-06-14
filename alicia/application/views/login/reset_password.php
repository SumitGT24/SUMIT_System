<!DOCTYPE html>
<html>
<head>
	 <title><?php 
	$this->load->helper('demo');	 
	  echo $this->config->item('company').' -- '.lang('common_powered_by').' PHP Point Of Sale' ?></title>
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
				if ($("#username_or_email").val() == '')
				{
					$("#username_or_email").focus();					
				}
			});
	</script>
<?php
$this->load->helper('demo');
if (is_on_demo_host()) { ?>		
	<script src="//phppointofsale.com/js/iframeResizer.contentWindow.min.js"></script>
<?php } ?>			
</head>
<body>

	<div class="flip-container">
        <div class="flipper">
            <div class="front">
                <!-- front content -->
                <div class="holder">
                                        
                    <h1 class="heading">
                        <?php echo img(
                        array(
                            'src' => $this->Appconfig->get_logo_image(),
									 'style' => 'width: auto;max-width: 180px',
                            )); ?>
                    </h1> 
                    <?php echo form_open('login/do_reset_password_notify',array('class'=>'form login-form')); ?>
                        <div class="version">
                            <h4><?php echo lang('login_reset_password'); ?></h4>
                        </div>
                        <?php if (isset($error)) {?>
			                <div class="alert alert-danger">
			                    <strong><?php echo lang('common_error'); ?></strong>
			                    <?php echo $error; ?>
			                </div>
			            <?php } else if(isset($success)){ ?>
			                <div class="alert alert-success">
			                    <strong><?php echo lang('common_success'); ?></strong> 
			                    <?php echo $success; ?>
			                </div>
		                <?php } ?>
                        <?php echo form_input(array(
                            'name'=>'username_or_email', 
									 'id' =>'username_or_email',
                            'class'=>'form-control', 
                            'placeholder'=>lang('login_username'), 
                            'size'=>'20')); 
                        ?>
                    
                        <div class="clearfix"></div>
                        <button type="submit" class="btn btn-primary btn-block"><?php echo lang('login_reset_password'); ?></button>
                            <div class= "version">
                                <p>
                                    <a href="<?php echo site_url('login') ?>" class="flip-link to-recover"><h5>Iniciar sesión</h5></a>
                                    <a href="https://api.whatsapp.com/send/?phone=50244060701&text&type=phone_number&app_absent=0" target="_blank"><h5>Soporte técnico</h5></a> </span> 
                                </p>
                            </div>
                    <?php echo form_close() ?>  
                </div>
            </div>          
        </div>      
    </div>


</body>
</html>