<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<title>Dashboard Admin</title>
	
	<meta charset="utf-8">
	
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,800">
	<link rel="stylesheet" href="<?php echo base_url(); ?>client_assets/css/font-awesome.css">
	
	<link rel="stylesheet" href="<?php echo base_url(); ?>client_assets/css/bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>client_assets/css/bootstrap-responsive.css">

	<link rel="stylesheet" href="<?php echo base_url(); ?>client_assets/css/ui-lightness/jquery-ui-1.8.21.custom.css">	
	
	<link rel="stylesheet" href="<?php echo base_url(); ?>client_assets/css/application-black-orange.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>client_assets/css/pages/dashboard.css">

	<script src="<?php echo base_url(); ?>client_assets/js/libs/modernizr-2.5.3.min.js"></script>

</head>

<body>
	
<div id="wrapper">
	
<div id="topbar">
	
	<div class="container">
		
		<a href="javascript:;" id="menu-trigger" class="dropdown-toggle" data-toggle="dropdown" data-target="#">
			<i class="icon-cog"></i>
		</a>
	
		<div id="top-nav">
			
			<ul>
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						View Your Site				
						<b class="caret"></b>
					</a>
					
					<ul class="dropdown-menu pull-right">
						<li><a href="javascript:;">View Site #1</a></li>
						<li><a href="javascript:;">View Site #2</a></li>
						<li class="dropdown-submenu">
		                  <a tabindex="-1" href="#">Dropdown menu</a>
		                  <ul class="dropdown-menu">
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                  </ul>
		                </li>
					</ul> 
				</li>
			</ul>
			
			<ul class="pull-right">
				<li><a href="javascript:;"><i class="icon-user"></i> Logged in as John Doe</a></li>
				<li><a href="javascript:;"><span class="badge badge-primary">1</span> New Message</a></li>
				<li class="dropdown">
					<a href="./pages/settings.html" class="dropdown-toggle" data-toggle="dropdown">
						Settings						
						<b class="caret"></b>
					</a>
					
					<ul class="dropdown-menu pull-right">
						<li><a href="javascript:;">Settings #1</a></li>
						<li><a href="javascript:;">Settings #2</a></li>
						<li class="dropdown-submenu">
		                  <a tabindex="-1" href="#">Dropdown menu</a>
		                  <ul class="dropdown-menu">
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                  </ul>
		                </li>
					</ul> 
				</li>
				<li><a href="login.html">Logout</a></li>
			</ul>
			
		</div> <!-- /#top-nav -->
		
	</div> <!-- /.container -->
	
</div> <!-- /#topbar -->


	
	
<div id="header">
	
	<div class="container">
		
		<a href="./index.html" class="brand">Dashboard Admin</a>
		
		<a href="javascript:;" class="btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        	<i class="icon-reorder"></i>
      	</a>
	
		<div class="nav-collapse">
			<ul id="main-nav" class="nav pull-right">
				<li class="nav-icon active">
					<a href="./index.html">
						<i class="icon-home"></i>
						<span>Home</span>        					
					</a>
				</li>
				
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-th"></i>
						<span>Components</span> 
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
						<li><a href="./elements.html">Elements</a></li>
						<li><a href="./validation.html">Validation</a></li>
						<li><a href="./jqueryui.html">jQuery UI</a></li>
						<li><a href="./charts.html">Charts</a></li>
						<li><a href="./bonus.html">Bonus Elements</a></li>
						<li class="dropdown-submenu">
		                  <a tabindex="-1" href="#">Dropdown menu</a>
		                  <ul class="dropdown-menu">
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                    <li><a tabindex="-1" href="#">Second level link</a></li>
		                  </ul>
		                </li>
					</ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-copy"></i>
						<span>Sample Pages</span> 
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
						<li><a href="./faq.html">FAQ</a></li>
						<li><a href="./gallery.html">Image Gallery</a></li>
						<li><a href="./pricing.html">Pricing Plans</a></li>
						<li><a href="./reports.html">Reports</a></li>
						<li><a href="./settings.html">Settings</a></li>
					</ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-external-link"></i>
						<span>Extras</span> 
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">							
						<li><a href="./login.html">Login</a></li>
						<li><a href="./signup.html">Signup</a></li>
						<li><a href="./error.html">Error</a></li>
						<li><a href="./skins.html">Skins</a></li>
						<li><a href="./sticky.html">Sticky Footer</a></li>
					</ul>    				
				</li>
			</ul>
			
		</div> <!-- /.nav-collapse -->

	</div> <!-- /.container -->
	
</div> <!-- /#header -->




<div id="masthead">
	
	<div class="container">
		
		<div class="masthead-pad">
			
			<div class="masthead-text">
				<h2>Dashboard</h2>
				<p>You are currently working on 4 projects, with 23 total tasks.</p>
			</div> <!-- /.masthead-text -->
			
		</div>
		
	</div> <!-- /.container -->	
	
</div> <!-- /#masthead -->




<div id="content">

	<div class="container">
		
		<div class="row">
			
			<div class="span4">
				<h3>Welcome back, Admin.</h3>
				
				<p>You are currently signed up to the Free Trial Plan. <br /><a href="javascript:;">Upgrade your plan today</a>.</p>
				
				<table class="table stat-table">
					<tbody>
						<tr>
							<td class="value">789</td>
							<td class="full">Visits Today</td>
						</tr>
						<tr>
							<td class="value">634</td>
							<td class="full">Unique Visits</td>
						</tr>
						<tr>
							<td class="value">13</td>
							<td class="full">Pending Comments</td>
						</tr>
						<tr>
							<td class="value">17</td>
							<td class="full">Support Requests</td>
						</tr>
					</tbody>
				</table>
			</div> <!-- /.span4 -->
			
			<div class="span8">
				<div id="line-chart" class="chart-holder"></div> <!-- /#bar-chart -->
			</div> <!-- /.span8 -->
			
		</div> <!-- /.row -->
		
		<div class="row">
			
			<div class="span5">
				
				<h3 class="title">Sales</h3>
				
				<div id="donut-chart" class="chart-holder"></div> <!-- /#donut-chart -->
				
			</div> <!-- /.span5 -->
						
			
			<div class="span7">
				
				<h3 class="title">Support Request</h3>
				
				<table class="table">
					<thead>
						<tr>
							<th>Label</th>
							<th>Subject</th>
							<th>User</th>
						</tr>						
					</thead>
					
					<tbody>
					<tr>
						<td><span class="label label-primary">Open</span></td>
						<td class="full"><a href="#">Lorem ipsum dolor sit amet</a></td>					
						<td class="who">Posted by Bill</td>
					</tr>
	
					<tr>
						<td><span class="label label-primary">Open</span></td>
						<td class="full"><a href="#">Consectetur adipiscing</a></td>
						<td class="who">Posted by Pam</td>
					</tr>
					<tr>
						<td><span class="label label-primary">Open</span></td>
						<td class="full"><a href="#">Sed in porta lectus maecenas</a></td>					
						<td class="who">Posted by Curtis</td>
					</tr>
					<tr>
						<td><span class="label label-danger">Closed</span></td>
						<td class="full"><a href="#">Dignissim enim</a></td>					
						<td class="who">Posted by John</td>
					</tr>
					<tr>
						<td><span class="label label-secondary">Responded</span></td>
						<td class="full"><a href="#">Duis nec rutrum lorem</a></td>
	
	
						<td class="who">Posted by James</td>
					</tr>
					<tr>
						<td><span class="label label-danger">Closed</span></td>
						<td class="full"><a href="#">Maecenas id velit et elit</a></td>					
						<td class="who">Posted by Sam</td>
					</tr>
					<tr>
						<td><span class="label label-secondary">Responded</span></td>
						<td class="full"><a href="#">Duis nec rutrum lorem</a></td>
						<td class="who">Posted by Carlos</td>
					</tr>
					</tbody>
				</table>	
			</div> <!-- /.span7 -->
			
		</div> <!-- /.row -->
		
	</div> <!-- /.container -->

</div> <!-- /#content -->

</div> <!-- /#wrapper -->




<div id="footer">
		
	<div class="container">
		
		<div class="row">
			
			<div class="span6">
				© 2012 <a href="http://jumpstartui.com">Jumpstart UI</a>, all rights reserved.
			</div> <!-- /span6 -->
			
			<div id="builtby" class="span6">
				<a href="http://jumpstartui.com">Built by Jumpstart.</a>				
			</div> <!-- /.span6 -->
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /#footer -->





<script src="<?php echo base_url(); ?>client_assets/js/libs/jquery-1.7.2.min.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/libs/jquery-ui-1.8.21.custom.min.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/libs/jquery.ui.touch-punch.min.js"></script>

<script src="<?php echo base_url(); ?>client_assets/js/libs/bootstrap/bootstrap.min.js"></script>

<script src="<?php echo base_url(); ?>client_assets/js/Theme.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/Charts.js"></script>

<script src="<?php echo base_url(); ?>client_assets/js/plugins/excanvas/excanvas.min.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/plugins/flot/jquery.flot.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/plugins/flot/jquery.flot.pie.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/plugins/flot/jquery.flot.orderBars.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/plugins/flot/jquery.flot.resize.js"></script>

<script src="<?php echo base_url(); ?>client_assets/js/demos/charts/line.js"></script>
<script src="<?php echo base_url(); ?>client_assets/js/demos/charts/donut.js"></script>

<script>

$(function () {
	
	Theme.init ();
	
});

</script>

</body>
</html>