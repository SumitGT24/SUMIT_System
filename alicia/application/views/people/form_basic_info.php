<div class="row">
	<div class="col-md-12">

		<div class="form-group">
			<?php 
				$required = ($controller_name == "suppliers") ? "" : "required";
				echo form_label(lang('common_first_name').':', 'first_name',array('class'=>$required.' col-sm-3 col-md-3 col-lg-2 control-label ')); 
			?>
			<div class="col-sm-9 col-md-9 col-lg-10">
				<?php echo form_input(array(
					'class'=>'form-control',
					'name'=>'first_name',
					'id'=>'first_name',
					'value'=>$person_info->first_name)
				);?>
			</div>
		</div>

		<div class="form-group">
			<?php echo form_label(lang('common_last_name').':', 'last_name',array('class'=>' col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
			<div class="col-sm-9 col-md-9 col-lg-10">
				<?php echo form_input(array(
					'class'=>'form-control',
					'name'=>'last_name',
					'id'=>'last_name',
					'value'=>$person_info->last_name)
				);?>
			</div>
		</div>

		<div class="form-group">
			<?php echo form_label(lang('common_email').':', 'email',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label '.($controller_name == 'employees' || $controller_name == 'login' ? 'required' : 'not_required'))); ?>
			<div class="col-sm-9 col-md-9 col-lg-10">
			<?php echo form_input(array(
				'class'=>'form-control',
				'name'=>'email',
				'type'=>'text',
				'id'=>'email',
				'value'=>$person_info->email)
				);?>
			</div>
		</div>

		<div class="form-group">	
			<?php echo form_label(lang('common_phone_number').':', 'phone_number',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
			<div class="col-sm-9 col-md-9 col-lg-10">
			<?php echo form_input(array(
				'class'=>'form-control',
				'name'=>'phone_number',
				'id'=>'phone_number',
				'value'=>$person_info->phone_number));?>
			</div>
		</div>

		<div class="form-group">	
		<?php echo form_label(lang('common_address_1').':', 'address_1',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
			<div class="col-sm-9 col-md-9 col-lg-10">
			<?php echo form_input(array(
				'class'=>'form-control',
				'name'=>'address_1',
				'id'=>'address_1',
				'value'=>$person_info->address_1));?>
			</div>
		</div>

		<div class="form-group">	
			<?php echo form_label(lang('common_comments').':', 'comments',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
			<div class="col-sm-9 col-md-9 col-lg-10">
				<?php echo form_textarea(array(
					'name'=>'comments',
					'id'=>'comments',
					'class'=>'form-control text-area',
					'value'=>$person_info->comments,
					'rows'=>'5',
					'cols'=>'17')		
				);?>
			</div>
		</div>
	</div><!-- /col-md-12 -->
</div><!-- /row -->
