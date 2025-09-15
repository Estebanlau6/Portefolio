<nav>
    <h2>Liste des news</h2>
    <?php
        // Connexion à la base de données Railway
        $ELA_connexion = mysqli_connect(
            'metro.proxy.rlwy.net',
            'root',
            'eTIVsWmfkABFpEMFcLzgwnwFELwngGtU',
            'railway',
            47246
        );

        if (!$ELA_connexion) {
            die("Erreur de connexion à la base de données : " . mysqli_connect_error());
        }

        $ELA_connexion->set_charset("utf8");

        // Récupération des catégories
        $ELA_requeteCategorie = "SELECT NomCategorie, idCategorie FROM categorie ORDER BY NomCategorie ASC";
        $ELA_TableCategorie = $ELA_connexion->query($ELA_requeteCategorie);

        while ($ELA_Categorie = $ELA_TableCategorie->fetch_assoc()) {
            echo "<h3>" . $ELA_Categorie["NomCategorie"] . "</h3>";

            echo "<ul>";
            // Récupération des news associées à cette catégorie
            $ELA_requeteNews = "SELECT idNews, NomNews FROM news WHERE idCategorie=" . $ELA_Categorie["idCategorie"];
            $ELA_TableNews = $ELA_connexion->query($ELA_requeteNews);

            while ($ELA_News = $ELA_TableNews->fetch_assoc()) {
                echo "<li><a href='ELA_NEWS.php?idNews=" . $ELA_News["idNews"] . "'>" . $ELA_News["NomNews"] . "</a></li>";
            }
            echo "</ul>";
        }
    ?>
</nav>
