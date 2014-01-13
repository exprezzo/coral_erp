
<div class="page-content">
	<div class="page-header position-relative">
		<h1>
			Perfil de Usuario
			<small>
				<i class="icon-double-angle-right"></i>
				<?php
					$user=sessionGet('user');										
					echo $user['nombre'];
				?>				
			</small>
		</h1>
	</div><!--/.page-header-->

	<div class="row-fluid">
		<div class="span12">
			<!--PAGE CONTENT BEGINS-->

		
			<div >
				<div id="user-profile-3" class="user-profile row-fluid">
					<div class="offset1 span10">						
					
						<div class="space"></div>

						<form class="form-horizontal" />
							<div class="tabbable">
								<ul class="nav nav-tabs padding-16">
									<li class="active">
										<a data-toggle="tab" href="#edit-basic">
											<i class="green icon-edit bigger-125"></i>
											Informaci&oacute;n Básico
										</a>
									</li>

									<li>
										<a data-toggle="tab" href="#edit-settings">
											<i class="purple icon-cog bigger-125"></i>
											Settings
										</a>
									</li>

									<li>
										<a data-toggle="tab" href="#edit-password">
											<i class="blue icon-key bigger-125"></i>
											Password
										</a>
									</li>
								</ul>

								<div class="tab-content profile-edit-tab-content">
									<div id="edit-basic" class="tab-pane in active">
										<h4 class="header blue bolder smaller">General</h4>

										<div class="row-fluid">
											<div class="span4">
												<input type="file" />
											</div>

											<div class="vspace"></div>

											<div class="span8">
												<div class="control-group">
													<label class="control-label" for="form-field-username">Username</label>

													<div class="controls">
														<input type="text" id="form-field-username" placeholder="Username" value="<?php echo $user['username']; ?>" />
													</div>
												</div>

												<div class="control-group">
													<label class="control-label" for="form-field-first">Name</label>

													<div class="controls">
														<input class="input-small" type="text" id="form-field-first" placeholder="Nombres" value="<?php echo $user['nombre']; ?>" />
														<input class="input-small" type="text" id="form-field-last" placeholder="Apellidos" value="" />
													</div>
												</div>
											</div>
										</div>

										<hr />
										<div class="control-group">
											<label class="control-label" for="form-field-date">Birth Date</label>

											<div class="controls">
												<div class="input-append">
													<input class="input-small date-picker" id="form-field-date" type="text" data-date-format="dd-mm-yyyy" placeholder="dd-mm-yyyy" />
													<span class="add-on">
														<i class="icon-calendar"></i>
													</span>
												</div>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label">Gender</label>

											<div class="controls">
												<div class="space-2"></div>

												<label class="inline">
													<input name="form-field-radio" type="radio" />
													<span class="lbl"> Male</span>
												</label>

												&nbsp; &nbsp; &nbsp;
												<label class="inline">
													<input name="form-field-radio" type="radio" />
													<span class="lbl"> Female</span>
												</label>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="form-field-comment">Comment</label>

											<div class="controls">
												<textarea id="form-field-comment"></textarea>
											</div>
										</div>

										<div class="space"></div>
										<h4 class="header blue bolder smaller">Contact</h4>

										<div class="control-group">
											<label class="control-label" for="form-field-email">Email</label>

											<div class="controls">
												<span class="input-icon input-icon-right">
													<input type="email" id="form-field-email" value="<?php echo $user['email']; ?>" />
													<i class="icon-envelope"></i>
												</span>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="form-field-website">Website</label>

											<div class="controls">
												<span class="input-icon input-icon-right">
													<input type="url" id="form-field-website" value="" />
													<i class="icon-globe"></i>
												</span>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="form-field-phone">Phone</label>

											<div class="controls">
												<span class="input-icon input-icon-right">
													<input class="input-medium input-mask-phone" type="text" id="form-field-phone" />
													<i class="icon-phone icon-flip-horizontal"></i>
												</span>
											</div>
										</div>

										<div class="space"></div>
										<h4 class="header blue bolder smaller">Social</h4>

										<div class="control-group">
											<label class="control-label" for="form-field-facebook">Facebook</label>

											<div class="controls">
												<span class="input-icon">
													<input type="text" value="" id="form-field-facebook" />
													<i class="icon-facebook"></i>
												</span>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="form-field-twitter">Twitter</label>

											<div class="controls">
												<span class="input-icon">
													<input type="text" value="" id="form-field-twitter" />
													<i class="icon-twitter"></i>
												</span>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="form-field-gplus">Google+</label>

											<div class="controls">
												<span class="input-icon">
													<input type="text" value="" id="form-field-gplus" />
													<i class="icon-google-plus"></i>
												</span>
											</div>
										</div>
									</div>

									<div id="edit-settings" class="tab-pane">
										<div class="space-10"></div>

										<div>
											<label class="inline">
												<input type="checkbox" name="form-field-checkbox" />
												<span class="lbl"> Make my profile public</span>
											</label>
										</div>

										<div class="space-8"></div>

										<div>
											<label class="inline">
												<input type="checkbox" name="form-field-checkbox" />
												<span class="lbl"> Email me new updates</span>
											</label>
										</div>

										<div class="space-8"></div>

										<div>
											<label class="inline">
												<input type="checkbox" name="form-field-checkbox" />
												<span class="lbl"> Keep a history of my conversations</span>
											</label>

											<label class="inline">
												<span class="space-2 block"></span>

												for
												<input type="text" class="input-mini" maxlength="3" />
												days
											</label>
										</div>
									</div>

									<div id="edit-password" class="tab-pane">
										<div class="space-10"></div>

										<div class="control-group">
											<label class="control-label" for="form-field-pass1">New Password</label>

											<div class="controls">
												<input type="password" id="form-field-pass1" />
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="form-field-pass2">Confirm Password</label>

											<div class="controls">
												<input type="password" id="form-field-pass2" />
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-actions">
								<button class="btn btn-info" type="button">
									<i class="icon-ok bigger-110"></i>
									Save
								</button>

								&nbsp; &nbsp; &nbsp;
								<button class="btn" type="reset">
									<i class="icon-undo bigger-110"></i>
									Reset
								</button>
							</div>
						</form>
					</div><!--/span-->
				</div><!--/user-profile-->
			</div>

			<!--PAGE CONTENT ENDS-->
		</div><!--/.span-->
	</div><!--/.row-fluid-->
</div><!--/.page-content-->

