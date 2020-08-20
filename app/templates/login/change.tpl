<h1>Profil bearbeiten</h1>

<form class="box" action="" method="post">
<input type="hidden" name="CSRFToken" value="<?=$CSRFToken;?>">
<fieldset><legend>Nutzerdaten</legend>
	<label>E-Mail: <input name="email" value="<?=auth('email');?>"></label>
	<label>Passwort: <input type="password" placeholder="*****" name="password"></label>
</fieldset>
<fieldset><legend>Zusatzinfos</legend>
	<label>Vorname: <input name="firstname" value="<?=auth('firstname');?>"></label>
	<label>Nachname: <input name="lastname" value="<?=auth('lastname');?>"></label>
</fieldset>

<button type="submit">Nutzerdaten speichern</button>
<a class="backbtn ml" href="/profil">oder abbrechen und zurück</a>

</form>


