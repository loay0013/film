<?php
require "settings/init.php";
$bind =[":FilmId"=> $_GET["FilmId"]];
$Films = $db->sql("SELECT * FROM Film WHERE FilmId =:FilmId;", $bind);
?>
    <!DOCTYPE html>
    <html lang="da">
    <head>
        <meta charset="utf-8">
        <?php

         foreach ($Films as $Film){
        ?>




        <title><?php
            echo $Film->FilmNavn?></title>

        <meta name="robots" content="All">
        <meta name="author" content="Udgiver">
        <meta name="copyright" content="Information om copyright">

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/styles.css" rel="stylesheet" type="text/css">
        <script src="https://cdn.tiny.cloud/1/jkzu8jwwcqe5jhv6qvqojegkrhyjq59kgtts7g0966ka00ix/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

<body class="bg-dark">
    <div class="row m-0">
        <div class="col-12 d-flex justify-content-center mt-md-5 col-md-6 p-0 ">
            <div class="d-flex justify-content-center">
                <img class="obj" src="uplods/<?php echo $Film->FilmImg; ?>" alt="">
            </div>
        </div>
        <div class="col-12 pt-5 col-md-6 mt-5">
            <h1 class="text-center text-light">
            <?php
            echo $Film->FilmNavn
            ?>
            </h1>


            <p class="text-center pt-4 text-light">
            <?php
            echo $Film->FilmDato
            ?>|
            <?php
            echo $Film->FilmTid
            ?>.min|
                +
            <?php
            echo  $Film->FilmAlder
            ?>|
            <?php
            echo $Film->FilmOprindelsesland
            ?>|
            <?php
            echo $Film->FilmGenre
            ?>|
            <?php
            echo $Film->FilmRate
            ?><i class="fa-regular fa fa-star"></i>|
            <?php
            echo $Film->FilmSprog
            ?>
            </p>

            <p class="text-center pt-4 text-light">
            
             Medvirkende:<br>
            <?php
            echo $Film->FilmMedvirkende
            ?>
            </p>
              <div class="p-5 text-light">
             <p class="text-light">
             
             <?php
             echo  $Film->FilmBas
             ?>
             </p>
              </div>
        </div>

    </div>
        <div class="d-flex justify-content-center">
            <a class="btn-primary btn" href="film.html">
                <p>
                    Til film side
                </p>
            </a>
        </div>

    <?php
}
?>

    <script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
