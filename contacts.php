<?php


	include "core/init.php";

	$db = new Database();

	$db->query("SELECT * FROM contacts");

	$rows = $db->resultset();





?>


<div class="row">
		<div class="large-12 columns">
			<table>
				<thead>
					<tr>
						<th width="200">Name</th>
						<th width="130">Phone</th>
						<th width="200">Email</th>
						<th width="250">Address</th>
						<th width="100">Group</th>
						<th width="150">Actions</th>
					</tr>
				</thead>
				<tbody>

					<?php foreach ($rows as $row) : ?>
					<tr>
						<td><a href="contact.html"><?php echo $row->first_name; ?></a></td>
						<td><?php echo $row->phone; ?></td>
						<td><?php echo $row->email; ?></td>
						<td>
						<ul>
							<li><?php echo $row->address1; ?></li>
							<li><?php echo $row->city; ?>, <?php echo $row->state; ?> <?php echo $row->zipcode; ?></li>
						</ul>
						</td>
						<td><?php echo $row->contacts_group; ?></td>
						<td>
							<ul class="button-group">
								<li><a href="edit_contact.php?id=<?php echo $row->id; ?>" class="button tiny">Edit</a></li>
								<li><a href="delete_contact.php?id=<?php echo $row->id; ?>" class="button tiny alert">Delete</a></li>
							</ul>
						</td>
					</tr>
					<?php endforeach; ?>
					
					
				</tbody>
			</table>
		</div>
	</div>