<form action="" method="post" class="form-horizontal">	
<table>
	<tr class="largeField">
		<td>
			<label for="business_name">Project Name</label>
			<span><input type="text" value="<?php echo $project->getProjectName(); ?>" id="project_name" name="project[Name]"></span>
		</td>
	</tr>
</table>
<table>
	<tr class="largeField">
		<td>
			<label for="business_name" class="above">Project Type</label>
			<span>
				<?php $js = 'class="connectionSelection"'; ?>
				<?php echo form_dropdown('project[Type]', $type_options, $project->getProjectTypeID(), $js); ?>
			</span>
		</td>
	</tr>
</table>

<div class="stdpadh stdpadt">
	<span>Business</span>
</div>
	
<table class="std">
	<tr>
		<td>
			<input id="my-text-input" type="text" name="project[Business]" class="selectBus" />
		</td>
	</tr>
</table>
<div class="stdpadh stdpadt">
	<span>Project Manager</span>
</div>
	
<table class="std">
	<tr>
		<td>
			<input id="my-text-input" type="text" name="project[Manager]" class="selectMan" />
		</td>
	</tr>
</table>
<div class="stdpadh stdpadt">
	<span>Project Cost</span>
</div>
<div class="input-prepend input-append">
		<span class="add-on">&pound;</span><input name="project[Cost]" class="span2" id="appendedPrependedInput" size="16" type="text" value="<?php echo $project->getBudget(); ?>"><span class="add-on">.00</span>
</div>
<div class="stdpadh stdpadt">
	<span>Sold By</span>
</div>
	
<table class="std">
	<tr>
		<td>
			<input id="my-text-input" type="text" name="project[Salesman]" class="selectSales" />
		</td>
	</tr>
</table>
<div class="stdpadh stdpadt">
	<span>Assign Project To</span>
</div>
	
<table class="std">
	<tr>
		<td>
			<input id="my-text-input" type="text" name="project[Workers]" class="selectWork" />
		</td>
	</tr>
</table>

<div class="stdpadh stdpadt">
	<span>Dates</span>
</div>
	
<table class="std">
	<tr>
		<td>
			<input type="text" name="project[Startdate]" class="datepicker" value="<?php echo date('d-m-Y', strtotime($project->getStartDate())); ?>"/>
		</td>
		<td>
			<input type="text" name="project[internal-end-date]" class="datepicker" value="<?php echo date('d-m-Y', strtotime($project->getInternalDeadline())); ?>"/>
		</td>
		<td>
			<input type="text" name="project[external-end-date]" class="datepicker" value="<?php echo date('d-m-Y', strtotime($project->getClientDeadline())); ?>"/>
		</td>
	</tr>
</table>

<table>
	<tr class="largeField">
		<td>
			<label for="business_name" class="above">Project Status</label>
			<span>
				<?php $js = 'class="connectionSelection"'; ?>
				<?php echo form_dropdown('project[Status]', $status_options, $project->getStatusID() , $js); ?>
			</span>
		</td>
	</tr>
</table>

<div class="stdpadh stdpadt">
	<span>Project Notes</span>
</div>
	
<table class="std">
	<tr>
		<td>
			<textarea name="project[Notes]" style="width:100%"><?php echo trim($project->getNotes()); ?></textarea>
		</td>
	</tr>
</table>


<br />		
<input type="submit" class="btn btn-mini btn-success" value="Update Project" />
</form>
<div class="clear"></div>

<script>
	var c = window.location.pathname;
	var x = c.substr(c.lastIndexOf('/')+1);
	$.ajax({
		url: '/projects/get_business/' + x,
		type: 'GET',
		data: 'json',
		success: function(data){
			$("#my-text-input.selectBus").tokenInput("/businesses/token", {
				theme: "facebook",
				prePopulate: eval('(' + data + ')'),
				preventDuplicates: true,
				tokenLimit: 1
			});
		},
	});
	$.ajax({
		url: '/projects/get_manager/' + x,
		type: 'GET',
		data: 'json',
		success: function(data){
			$("#my-text-input.selectMan").tokenInput("/projects/token_managers", {
				theme: "facebook",
				prePopulate: eval('(' + data + ')'),
				preventDuplicates: true,
				tokenLimit: 1
			});
		},
	});
	$.ajax({
		url: '/projects/get_salesman/' + x,
		type: 'GET',
		data: 'json',
		success: function(data){
			$("#my-text-input.selectSales").tokenInput("/projects/token_salesman", {
				theme: "facebook",
				prePopulate: eval('(' + data + ')'),
				preventDuplicates: true,
				tokenLimit: 1
			});
		},
	});
	$.ajax({
		url: '/projects/get_workers/' + x,
		type: 'GET',
		data: 'json',
		success: function(data){
			$("#my-text-input.selectWork").tokenInput("/projects/token_workers", {
				theme: "facebook",
				prePopulate: eval('(' + data + ')'),
				preventDuplicates: true
			});
		},
	});
</script>