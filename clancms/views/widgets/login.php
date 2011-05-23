				<?php if($this->user->logged_in()): ?>
				<div id="avatar" class="left">
					<?php if($user->user_avatar): ?>
						<?php echo anchor('account/profile/' . $this->users->user_slug($this->session->userdata('username')), img(array('src' => IMAGES . 'avatars/' . $user->user_avatar, 'title' => $this->session->userdata('username'), 'alt' => $this->session->userdata('username'), 'width' => '57', 'height' => '57'))); ?>
					<?php else: ?>
						<?php echo anchor('account/profile/' . $this->users->user_slug($this->session->userdata('username')), img(array('src' => THEME_URL . 'images/avatar_none.png', 'title' => $this->session->userdata('username'), 'alt' => $this->session->userdata('username'), 'width' => '57', 'height' => '57'))); ?>
					<?php endif; ?>
				</div>
				<div id="login">
					<?php echo anchor('account/profile/' . $this->users->user_slug($this->session->userdata('username')), $this->session->userdata('username')); ?>
					<?php echo br(2); ?>
					<?php if($this->user->is_administrator() && $this->uri->segment(1, '') . '/' != ADMINCP): echo anchor(ADMINCP, 'Admin CP') . br(); else: echo anchor('', CLAN_NAME) . br();endif; ?>
					<?php echo anchor('account', 'My Account'); ?> | <?php echo anchor('account/logout', 'Logout'); ?>
				</div>
				<div class="clear"></div>
				<?php else: ?>
				<?php echo form_open('account/login'); ?>
				<div class="label">Username:</div>
				<?php 
				$data = array(
					'name'		=> 'username',
					'size'		=> '18',
					'class'		=> 'input'
				);

				echo form_input($data); ?>
				<?php echo br(2); ?>
				
				<div class="label">Password:</div> 
				<?php 
				$data = array(
					'name'		=> 'password',
					'size'		=> '18',
					'class'		=> 'input'
				);

				echo form_password($data); ?>
				<?php echo br(2); ?>
				<?php
					$data = array(
						'name'		=> 'remember',
						'value'		=> '1',
						'class'		=> 'label'
					);
					
					echo form_checkbox($data); ?><div class="label"><?php echo nbs(2); ?>Remember me?</div>
				<?php echo form_hidden('redirect', $this->session->userdata('current')); ?>
				<?php 
					$data = array(
						'name'		=> 'login',
						'class'		=> 'submit',
						'value'		=> 'Login'
					);
				
				echo form_submit($data); ?>
				
				<div class="clear"></div>
				<?php echo form_close(); ?>
				<?php endif; ?>