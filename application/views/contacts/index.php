<p>This is the contact home page check it out y'alll</p>
<table>
	<?php foreach($contact_list as $contact){ ?>
	<tr>
		<td><?php echo $contact['ID']; ?></td>
		<td><?php echo $contact['Name_First'] . ' ' . $contact['Name_Last']; ?></td>
		<td><?php echo $contact['Contact_Email']; ?></td>
		<td><a href="edit/<?php echo $contact['ID']; ?>">Edit</a></td>
		<td><a href="./delete/<?php echo $contact['ID']; ?>">Delete</a></td>
	</tr>
	<?php } ?>
</table>

<br />
<br />
<?php render_partial('add', 'contacts'); ?>
<br />