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

		<div class="form-group">	
		<?php echo form_label(lang('common_choose_avatar').':', 'image_id',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label ')); ?>
			<div class="col-sm-9 col-md-9 col-lg-10">
	      		<ul class="list-unstyled avatar-list">
					<li>
						<input type="file" name="image_id" id="image_id" class="filestyle" >&nbsp;
					</li>
					<li>
						<?php echo $person_info->image_id ? '<div id="avatar">'.img(array('style' => 'width: 60%','src' => app_file_url($person_info->image_id),'class'=>'img-polaroid img-polaroid-s')).'</div>' : '<div id="avatar">'.img(array('style' => 'width: 20%','src' => base_url().'assets/img/avatar.png','class'=>'img-polaroid','id'=>'image_empty')).'</div>'; ?>		
					</li>		
				</ul>
			</div>
		</div>
	
		<?php if($person_info->image_id) {  ?>
		
		<div class="form-group">
		<?php echo form_label(lang('common_del_image').':', 'del_image',array('class'=>'col-sm-3 col-md-3 col-lg-2 control-label')); ?>
			<div class="col-sm-9 col-md-9 col-lg-10">
			<?php echo form_checkbox(array(
				'name'=>'del_image',
				'id'=>'del_image',
				'class'=>'delete-checkbox', 
				'value'=>1
			));
			echo '<label for="del_image"><span></span></label> ';
			
			?>
			</div>
		</div>
		
		<?php }  ?>

	</div><!-- /col-md-12 -->
</div><!-- /row -->
