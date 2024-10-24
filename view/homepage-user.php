<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <title>Homepage - Library.id</title>
</head>

<body style="background-color: rgb(243, 243, 243);">
    <!-- Navbar -->
    <?php
    $home = "active";
    require "view/navbar-user.php";
    ?>
    <br>

    <!-- Carousel -->
    <div id="carouselExampleIndicators"  class="carousel slide mx-5 mt-5" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner shadow"  style="height:400px;"style="border-radius:25px;">

            <?php

            $res = $db->conn->query("SELECT * FROM buku ORDER BY RAND() LIMIT 3");
            $i = 0;
            while ($d = $res->fetch_assoc())
            {
                $aaa = $db->conn->query("SELECT * FROM peminjaman WHERE user_id = ".$user->id." AND buku_id = ".$d["id"]);
                if ($aaa->num_rows == 0)
                {
                    $i++;
                    echo '<div class="carousel-item '.(($i == 1) ? "active":"").'">
                    <div class="row bg-light">
                        <div class="col">
                            <img class="d-block w-100" src="foto_buku/'.$d["foto"].'" height="400px" alt="First slide">
                        </div>
                        <div class="col bg-white p-5">
                        <h5 class="font-weight-bold">Judul : '.$d["judul"].'</h5>
                        <br>
                        <h5 class="font-weight-bold">Pencipta : '.$d["pengarang"].'</h5>
                        <br>
                        <a href="preview?id='.$d["id"].'" class="btn btn-outline-dark">Preview</a>
                        <a href="pinjam?id='.$d["id"].'" class="btn btn-outline-dark">Pinjam</a>
                        </div>
                    </div>
                </div>';
                }
            }
            if ($i == 0 || $res->num_rows == 0)
            {
                echo "<p class='ml-5 pl-5 mt-5'>Tidak ada buku atau buku sedang anda pinjam</p>";
            }
            ?>
            
        </div>
        <a class="carousel-control-prev bg-danger" style="width:50px;border-radius:25px;" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next bg-danger" style="width:50px;border-radius:25px;" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>