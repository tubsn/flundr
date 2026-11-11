<main class="auth-layout">

	<h1><?=$page['title'] ?? 'Login Page'?></h1>

	<form class="auth-login" action="" method="post">
		<input type="hidden" name="referer" value="<?=htmlspecialchars($_SERVER['HTTP_REFERER'] ?? '', ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8')?>">
		<fieldset><legend>Bitte melden sie sich an:</legend><?=(isset($message) ? '<div class="infoMessage fade-in">'.$message."</div>\n" : "\n")?>
			<label>E-Mail Adresse:<input name="username" type="text"<?=(isset($username) ? ' value="' . htmlspecialchars($username, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8') . '"' : " autofocus")?>></label>
			<label>Passwort:<input name="password" type="password"<?=(isset($username) ? " autofocus" : "")?>></label>
			<button type="submit">Anmelden</button>
			&ensp;<a href="/password-reset">Passwort zurücksetzen</a>
		</fieldset>
	</form>

</main>

