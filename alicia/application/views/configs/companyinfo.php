<!-- Company Information -->
<div class="col-md-12">
			<div class="panel panel-piluku">
				<div class="panel-heading">
					<?php echo create_section(lang("config_company_info"))  ?>
				</div>
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
					</div>

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