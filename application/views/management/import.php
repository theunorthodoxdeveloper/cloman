<div class="success"><?php echo $this->session->flashdata('successful_import'); ?></div>
<div class="error"><?php echo $this->session->flashdata('error_importing'); ?></div>

<?php echo form_open_multipart('management/import');?>
<?php
	$js = 'id="exportDropdown"';
	echo form_dropdown('importDatabase', $tables_array, '', $js); 
?><br />

<input type="file" id="file" name="userfile" size="20" />
<div class="dummyfile input-append">
<input id="filename" type="text" class="input disabled span2" name="userfile" readonly="readonly" />
<a id="fileselectbutton" class="btn">Choose...</a>
</div>
<br />
<input type="text" name="primary" placeholder="product_id" />
<input type="submit" value="Import" class="btn" />
</form>