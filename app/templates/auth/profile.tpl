<main class="auth-layout">


	<div style="float:right">
		<a class="button" href="/profile/edit/">Edit Userdata</a>
		&ensp; <a class="button light" href="/logout">Logout Current User</a>
	</div>

	<h1><?=$page['title'] ?? 'User-Profile'?></h1>


	<table class="auth-profile fancy wide mb2">
		<tr>
			<th>ID:</th><th><?=auth('id');?></th>
		</tr>
		<tr>
			<td>E-Mail:</td><td><?=auth('email');?></td>
		</tr>
		<tr>
			<td>Nickname:</td><td><?=auth('username');?></td>
		</tr>
		<tr>
			<td>Firstname:</td><td><?=auth('firstname');?></td>
		</tr>
		<tr>
			<td>Lastname:</td><td><?=auth('lastname');?></td>
		</tr>
		<tr>
			<td>Groups:</td><td><?=auth('groups');?></td>
		</tr>
		<tr>
			<td>Rights:</td><td><?=auth('rights');?></td>
		</tr>
		<?php if (auth('level') == 'Admin'): ?>
		<tr>
			<td>Userlevel:</td><td><?=auth('level');?></td>
		</tr>
		<?php endif; ?>
	</table>

	<?php if (auth('level') == 'Admin'): ?>
	<details class="mb2 fancy">
		<summary>Show Login History</summary>
		<table class="fancy wide mb">
			<tr>
				<th>Datum</th>
				<th>Zeit</th>
				<th>IP</th>
				<th>Useragent</th>
			</tr>
		<?php foreach ($logins as $login): ?>
			<tr>
				<td><?=formatDate($login['date'],"d.m.Y")?></td>
				<td><?=formatDate($login['date'],"h:i")?> Uhr</td>
				<td><?=$login['ip']?></td>
				<td><?=$login['userinfo']?></td>
			</tr>
		<?php endforeach; ?>
		</table>
	</details>
	<?php endif; ?>

	<a class="button" href="/profile/edit/">Edit Userdata</a>
	&ensp; or
	&ensp;<a class="button light" href="/logout">Logout Current User</a>

</main>
