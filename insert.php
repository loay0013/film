<?php
require "settings/init.php";

if(!empty($_POST["data"])){
    $data = $_POST["data"];
    $file =$_FILES;
    if(!empty($file["FilmImg"]["tmp_name"])){
        move_uploaded_file($file["FilmImg"]["tmp_name"],"uplods/".basename($file["FilmImg"]["name"]));
    }



    $sql ="INSERT INTO Film (FilmNavn,FilmDato,FilmBas,FilmRate,FilmGenre,FilmMedvirkende,FilmTid,FilmSprog,FilmAlder,FilmOprindelsesland, FilmImg) values (:FilmNavn,:FilmDato,:FilmBas,:FilmRate,:FilmGenre,:FilmMedvirkende,:FilmTid,:FilmSprog,:FilmAlder,:FilmOprindelsesland, :FilmImg)";
    $bind=[":FilmNavn"=> $data["FilmNavn"], ":FilmDato"=> $data["FilmDato"], ":FilmBas"=> $data["FilmBas"],":FilmRate"=> $data["FilmRate"], ":FilmGenre"=> $data["FilmGenre"],":FilmMedvirkende"=> $data["FilmMedvirkende"],":FilmTid"=> $data["FilmTid"],":FilmSprog"=> $data["FilmSprog"],":FilmAlder"=> $data["FilmAlder"],":FilmOprindelsesland"=> $data["FilmOprindelsesland"], ":FilmImg"=>(!empty($file["FilmImg"]["tmp_name"]))? $file["FilmImg"]["name"] :NULL ];
    $db->sql($sql, $bind, false);

    echo "<body style='font-size: 2rem; background-color: #000000; '></body>

       <p style='color: white; text-align: center; margin-top: 20%;' >Film er nu indsat.<p/>
       <div style='display: flex; justify-content: center;'>
       <button style='display:flex; justify-content:center; padding: 10px '>
       <a  style='text-decoration: none; color: black;' href='insert.php' >Indsat en film mere</a></button></div>";
    exit;
}
?>
<!DOCTYPE html>

<!-- html starter og slutter hele dokumentet / lang=da: Fortæller siden er på dansk -->
<html lang="da">

<!-- I <head> har man opsætning - det ser brugeren ikke, men det fortæller noget om siden -->
<head>
    <!-- Sætter tegnsætning til utf-8 som bl.a. tillader danske bogstaver -->
    <meta charset="utf-8">

    <!-- Titel som ses oppe i browserens tab mv. -->
    <title>Film</title>

    <!-- Metatags der fortæller at søgemaskiner er velkomne, hvem der udgiver siden og copyright information -->
    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <!-- Sikrer man kan benytte CSS ved at tilkoble en CSS fil -->
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.tiny.cloud/1/jkzu8jwwcqe5jhv6qvqojegkrhyjq59kgtts7g0966ka00ix/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script></head>



    <body class="bg-black">
    <form method="post" action="insert.php" enctype="multipart/form-data">
        <div>
            <h1 class="text-light d-flex justify-content-center">
                IMDB Film
            </h1>
        </div>
        
        <div class="row justify-content-center m-0">
            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmNavn"><p class="text-light m-0">Film Navn</p></label>
                    <input class="form-control border-0 rounded-0" type="text" name="data[FilmNavn]"  id="FilmNavn" placeholder="Film Navn" value="">
                </div>
            </div>

            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmDato"><p class="text-light m-0">Udgivelsesdato</p></label>
                    <input class="form-control border-0 rounded-0" type="number" name="data[FilmDato]"  id="FilmDato" placeholder="Udgivelsesdato" value="">
                </div>
            </div>


            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmRate"> <p class="text-light m-0">Rate</p></label>
                    <input class="form-control border-0 rounded-0" type="number" name="data[FilmRate]"  id="FilmRate" placeholder="Rate" value="">
                </div>
            </div>
            <div class="col-12 col-md-10">
            <div class="form-group m-2">
                <label for="FilmImg"> <p class="text-light m-0">Img</p></label>
                <input class="form-control border-0 rounded-0" type="file" name="FilmImg"  id="FilmImg" placeholder="Img" value="">
            </div>
        </div>
            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmGenre"> <p class="text-light m-0">Genre</p></label>
                    <input class="form-control border-0 rounded-0" type="text" name="data[FilmGenre]"  id="FilmGenre" placeholder="Genre" value="">
                </div>
            </div>

            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmMedvirkende"><p class="text-light m-0">Medvirkende</p></label>
                    <input class="form-control border-0 rounded-0" type="text" name="data[FilmMedvirkende]"  id="FilmMedvirkende" placeholder="Medvirkende" value="">
                </div>
            </div>

            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmTid"><p class="text-light m-0">Længde</p></label>
                    <input class="form-control border-0 rounded-0" type="number" name="data[FilmTid]"  id="FilmTid" placeholder="Længde" value="">
                </div>
            </div>

            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmSprog"> <p class="text-light m-0">Sprog</p></label>
                    <input class="form-control border-0 rounded-0" type="text" name="data[FilmSprog]"  id="FilmSprog" placeholder="Sprog" value="">
                </div>
            </div>

            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmOprindelsesland"><p class="text-light m-0">Oprindelsesland</p></label>
                    <input class="form-control border-0 rounded-0" type="text" name="data[FilmOprindelsesland]"  id="FilmOprindelsesland" placeholder="Oprindelsesland" value="">
                </div>
            </div>

            <div class="col-12 col-md-5">
                <div class="form-group m-2">
                    <label for="FilmAlder"> <p class="text-light m-0">Censur</p></label>
                    <input class="form-control border-0 rounded-0" type="number" name="data[FilmAlder]"  id="FilmAlder" placeholder="Censur" value="">
                </div>
            </div>

            <div class="col-12">
                <div class="form-group m-2">
                    <label for="FilmBas"> <p class="text-light m-0">Film resume</p></label>
                    <textarea class="form-control " type="text" name="data[FilmBas]"  id="FilmBas" ></textarea>
                </div>
            </div>

            <div class="col-12 col-md-6 mt-5  mb-5">
                <div class="d-flex justify-content-center">
                <button class="form-control btn btn-primary bg-gradient rounded-0 border-0 " type="submit" id="btnsubmit">Submit</button></div>
            </div>

        </div>
    </form>


    <script>
        tinymce.init({
            selector: 'textarea',
        });
    </script>
</body>
</html>
