<!DOCTYPE html>
<html lang="fr">
   <head>
       <meta charset="utf-8">
	   <link  href="ELA_CyberNews.css" rel="stylesheet"> 
	   <title>CyberNews - Esteban Laurent</title>
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
	   ?>
		<article>
				<?php
					//Récupérer toutes les informations requis dans la base de donnée
					$ELA_PassageUrl = $_GET['idNews'];
                    $ELA_InfoRequete = "SELECT NomNews, AuteurNews, DateNews, ResumeNews, NomCategorie FROM news as N INNER JOIN categorie AS C ON N.idCategorie = C.idCategorie WHERE idNews=" . $ELA_PassageUrl;
                    $ELA_InfoTable = $ELA_connexion->query($ELA_InfoRequete);
                    $ELA_Info = $ELA_InfoTable->fetch_assoc(); 
                ?>
		<div>
					<?php
						//Afficher les informations de la base de donnée 
						echo "<h2>" . $ELA_Info["NomNews"] . "</h2>";
                        echo "<p><b>Catégorie : </b>" . $ELA_Info['NomCategorie'] . "</p>";
                        echo "<p><b>Auteur : </b>" . $ELA_Info["AuteurNews"] . "</p>";
                        echo "<p><b>Date : </b>" . $ELA_Info["DateNews"] . "</p>";
						echo "<p><b>Résumé : </b>" . $ELA_Info["ResumeNews"] . "</p>";
						$ELA_connexion->close();
                    ?>
		</div>
		</article>
	   </div>
	  </body>
</html>