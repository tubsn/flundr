<h1>Login Seite</h1>

<form class="loginform" action="" method="post">
	<input type="hidden" name="referer" value="<?=(isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '')?>">
	<fieldset><legend>Bitte melden sie sich an:</legend><?=(isset($message) ? '<div class="infoMessage fade-in">'.$message."</div>\n" : "\n")?>
		<label>E-Mail Adresse:<input name="username" type="text"<?=(isset($username) ? ' value="' . $username . '"' : " autofocus")?>></label>
		<label>Passwort:<input name="password" type="password"<?=(isset($username) ? " autofocus" : "")?>></label>
		<button type="submit">Anmelden</button>
	</fieldset>
</form>