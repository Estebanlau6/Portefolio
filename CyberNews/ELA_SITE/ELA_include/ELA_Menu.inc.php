<nav>
    <h2>Liste des news</h2>
    <?php
        // Connexion à la base de données Railway
        $mysqli = mysqli_connect(
            'containers-us-west-xxx.railway.app', // host Railway
            'root',                               // user Railway
            'TON_MOT_DE_PASSE',                   // mot de passe Railway
            'nom_de_ta_base',                     // nom de ta base
            3306                                  // port Railway
        );

        // Vérifie la connexion
        if (!$mysqli) {
            die("Erreur de connexion à la base de données : " . mysqli_connect_error());
        }

        $mysqli->set_charset("utf8");

        $ELA_requeteCategorie = "SELECT NomCategorie, idCategorie FROM categorie ORDER BY NomCategorie ASC";
        $ELA_TableCategorie = $mysqli->query($ELA_requeteCategorie);

        $ELA_Categorie = $ELA_TableCategorie->fetch_assoc();

        // Afficher toutes les catégories
        while ($ELA_Categorie) {
            echo "<h3>" . $ELA_Categorie["NomCategorie"] . "</h3>";
            $ELA_Categorie = $ELA_TableCategorie->fetch_assoc();
        }
    ?>

    <ul>
        <?php
            //Récupéré toutes les informations des news depuis la base de donnée
            $ELA_requeteNews = "SELECT idNews, NomNews FROM news WHERE idCategorie=" . $ELA_Categorie["idCategorie"] ;
            $ELA_TableNews = $ELA_connexion->query($ELA_requeteNews);

            $ELA_News = $ELA_TableNews->fetch_assoc();
            //Afficher toutes les news 
            while ($ELA_News) {
                echo "<li><a href='ELA_NEWS.php?idNews=" . $ELA_News["idNews"] . "'>" . $ELA_News["NomNews"] . "</a></li>";
                $ELA_News = $ELA_TableNews->fetch_assoc();
            }
        ?>
    </ul>
    <?php
            $ELA_Categorie = $ELA_TableCategorie->fetch_assoc();
        } 
    ?>
</nav>