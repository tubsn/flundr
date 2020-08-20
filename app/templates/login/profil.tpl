<h1>Nutzer-Profil Verwaltung</h1>

<table class="compact wide">
		<tr>
			<td>ID:</td><td><?=auth('id');?></td>
		</tr>
		<tr>
			<td>E-Mail:</td><td><?=auth('email');?></td>
		</tr>
		<tr>
			<td>Vorname:</td><td><?=auth('firstname');?></td>
		</tr>
		<tr>
			<td>Nachname:</td><td><?=auth('lastname');?></td>
		</tr>
		<tr>
			<td>Gruppen:</td><td><?=auth('groups');?></td>
		</tr>
		<tr>
			<td>Rechte:</td><td><?=auth('rights');?></td>
		</tr>		
		<?php if (auth('level') == 'Admin'): ?>
		<tr>
			<td>Userlevel:</td><td><?=auth('level');?></td>
		</tr>
		<?php endif; ?>
</table>

<a class="button" href="/profil/edit/">Nutzerdaten bearbeiten</a>
<a class="button" href="/logout/">Ausloggen</a>