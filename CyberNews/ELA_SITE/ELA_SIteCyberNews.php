	<!DOCTYPE html>
<html lang="fr">
   <head>
       <meta charset="utf-8">
	   <link  href="ELA_CyberNews.css" rel="stylesheet"> 
	   <title>CyberNews - Laurent Esteban</title>
   </head>
	  <body>
	   <div id="page">
	   <header>
	   <div class="logo">
	   		<a href = "ELA_SIteCyberNews.php"><img src="logo.png" width="100" alt="logo"></a>
		</div>
			<h1>CyberNews - Esteban Laurent</h1>
	   </header>
		<?php
		//Include contenant le menu 
		include 'ELA_include/ELA_Menu.inc.php';
		$ELA_connexion->close();
		?>
		<article>
			<h2>Présentation du site</h2>
			<p>Ce site a pour objectif de vous présenter les news les plus importantes de ces derniers mois en matière de cybersécurité.</p>
			<p>Les news présentées traitent plus particulièrement de la cybersécurité autour des données personnelles.</p>
			<p>Ce site fera l'objet d'une actualisation mensuelle.</p>
		</article>
	   </div>
	  </body>
</html>