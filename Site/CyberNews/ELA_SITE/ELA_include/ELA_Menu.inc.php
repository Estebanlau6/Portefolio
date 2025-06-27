<nav>
    <h2>Liste des news</h2>
    <?php
        //Récupéré toutes les informations des catégories depuis la base de donnée
        $ELA_connexion = mysqli_connect("localhost", "root", "", "sitecybernews");
        $ELA_connexion->set_charset("utf8");
        $ELA_requeteCategorie = "SELECT NomCategorie, idCategorie FROM categorie ORDER BY NomCategorie ASC";
        $ELA_TableCategorie = $ELA_connexion->query($ELA_requeteCategorie);

        $ELA_Categorie = $ELA_TableCategorie->fetch_assoc();
        //Afficher toutes les catégories
        while ($ELA_Categorie) 
        {
            echo "<h3>" . $ELA_Categorie["NomCategorie"] . "</h3>";
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