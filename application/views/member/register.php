<div style="color:#FF0000;">
	<?php echo validation_errors(); ?>
	<?php if(isset($error)){
		echo $error;
	} ?>
</div>
<p> This is the memeber register page. You can sign up for an account and recieve free plasters</p>
<br />
<form action="" method="post">	
	<table class="std">
		<tbody>
			<tr class="largeField">
				<td>
					<label for="contact_Title" class="above">Title*</label><br>
					<span><input type="text" value="" id="contact_Title" name="contact[Title]"></span>
				</td>
			</tr>
			<tr class="largeField">
				<td>
					<label for="contact_Name_First" class="above">First Name*</label><br>
					<span><input type="text" value="" id="contact_Name_First" name="contact[Name_First]"></span>
				</td>
				<td>
					<label for="contact_Name_Last" class="above">Last Name*</label><br>
					<span><input type="text" value="" id="contact_Name_Last" name="contact[Name_Last]"></span>
				</td>
			</tr>
			<tr class="largeField">
				<td>
					<label for="contact_Email" class="above">Email Address*</label><br>
					<span><input type="text" id="contact_Email" name="contact[Email]"></span>
				</td>
			</tr>
			<tr class="largeField">
				<td>
					<label for="contact_Url" class="above">Url</label><br>
					<span><input type="text" id="contact_Url" name="contact[Url]"></span>
				</td>
				<td>
					<label for="contact_Display_Name" class="above">Display Name*</label><br>
					<span><input type="text" value="" id="contact_Display_Name" name="contact[Display_Name]"></span>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="stdpadh stdpadt">
		<h3>Your Address</h3>
		<p>For securirty this must be the same are your credit card billing address.</p>
	</div>
	
	<table class="std">
		<tbody><tr class="largeField">
			<td><label for="address_Address_Line_1">Property Name / Number*</label></td>
			<td><span><input type="text" value="" id="address_Address_Line_1" name="address[Address_Line_1]"></span></td>
		</tr>
		<tr class="largeField">
			<td><label for="address_Address_Line_2">Street</label></td>
			<td><span><input type="text" value="" id="address_Address_Line_2" name="address[Address_Line_2]"></span></td>
		</tr>
		<tr class="largeField">
			<td><label for="address_Address_Line_3">Area</label></td>
			<td><span><input type="text" value="" id="address_Address_Line_3" name="address[Address_Line_3]"></span></td>
		</tr>
		<tr class="largeField">
			<td><label for="address_City">Town / City*</label></td>
			<td><span><input type="text" value="" id="address_City" name="address[City]"></span></td>
		</tr>
		<tr>
			<td><label for="address_Region_ID">County / State*</label></td>
			<td>
				<input type="text" id="address_City" name="address[County]" />
			</td>
		</tr>
		<tr>
			<td><label for="address_Country_ID">Country*</label></td>
			<td>
				<select name="address[Country]">
				<?php 
					foreach($countries as $country){ ?>
						<option value="<?php echo $country['Country_ID']; ?>"><?php echo $country['Country']; ?></option>
					<?php }
				?>
				</select>
			</td>
		</tr>
		<tr>
			<td><label for="address_Postcode">Postcode*</label></td>
			<td><span><input type="text" value="" id="address_Postcode" name="address[Postcode]"></span></td>
		</tr>
	</tbody>
</table>

	<div class="stdpadh stdpadt">
		<h3>Your Password</h3>
		<p>Please set a password between 6 and 12 characters, which are either numbers or alphabetical.</p>
	</div>
	
	<table class="std">
		<tbody>
			<tr class="largeField">
				<td>
					<label for="password" class="above">Password*</label><br>
					<span><input type="password" value="" id="password" name="password"></span>
				</td>
				<td>
					<label for="confirmpass" class="above">Confirm Password*</label><br>
					<span><input type="password" value="" id="confirmpass" name="confirmpass"></span>
				</td>
			</tr>
		</tbody>
	</table>
	
	<div class="stdpad">
		<div class="float-left">
			<a href="#"></a><input type="checkbox" value="Y" id="agree" name="agree">
			<label for="agree">I accept the <a target="_blank" href="/terms">terms &amp; conditions</a> of use.</label>
		</div>
		<div class="float-right">
			<span><span class="icon add"></span><input type="submit" value="Create Account" class="label hasIcon"></span>
		</div>
		<div class="clear"></div>
	</div>
</form>