<?php
include 'functions.php';
//if(empty($_SESSION['login']))
//header("location:login.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Sistem Rekomendasi Jurusan Perguruan Tinggi</title>
    <link href="assets/css/yeti-bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/general.css" rel="stylesheet" />
    <link href="assets/css/select2.min.css" rel="stylesheet" />
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/select2.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("select:not(.default)").select2();
        })
    </script>
    <style type="text/css">
        .coeg {
            border-radius: 15px;
            border: 2px solid #000;
        }

        .hi {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('assets/images/back.jpg');
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .dark {
            background-color: #000;
            color: #fff;
        }

        .refresh {
            background-color: #55efc4;
            color: #fff;
        }

        .refresh:hover {
            color: #fff;
            background-color: #00b894;
        }

        .tambah {
            background-color: #e67e22;
            color: #fff;
        }

        .tambah:hover {
            color: #fff;
            background-color: #d35400;
        }

        .edit {
            background-color: #3498db;
            color: #fff;
        }

        .edit:hover {
            color: #fff;
            background-color: #2980b9;
        }

        .hapus {
            background-color: #f0ad4e;
            color: #555555;
        }

        .hapus:hover {
            color: #555555;
            background-color: #d9534f;
        }

        .t {
            font-size: 15px;
            font-family: unset;
        }

        .latar {
            background-color: #636e72;
        }

        .tambah {
            background-color: #353b48;
        }

        .tambah:hover {
            background-color: #718093;
            color: #fff;
        }

        .edit {
            background-color: #2f3640;
        }

        .edit:hover {
            background-color: #718093;
            color: #fff;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="?" class="d"><b>BERANDA</b></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <?php if ($_SESSION['login']) : ?>
                        <li><a href="?m=diagnosa" class="t"><b>JURUSAN</b></a></li>
                        <li><a href="?m=gejala" class="t"><b>FAKTA</b></a></li>
                        <li><a href="?m=relasi" class="t"><b>PENGETAHUAN</b></a></li>
                        <li><a href="?m=rule" class="t"><b>ATURAN</b></a></li>
                        <li><a href="?m=laporan" class="t"><b>LAPORAN</b></a></li>
                        <li><a href="?m=admin" class="t"><b>ADMIN</b></a></li>
                        <li><a href="logout.php" class="t"><b>LOGOUT</b></a></li>
                    <?php else : ?>
                        <li><a href="?m=login" class="t"><b>ADMIN</b></a></li>
                        <li><a href="?m=biodata" class="t"><b>REGISTER</b></a></li>
                    <?php endif ?>
                </ul>
            </div>
        </div>
    </nav>
    <div>
        <div class="container">
            <?php
            if (!$_SESSION['login'] && in_array($mod, array('diagnosa', 'gejala', 'relasi', 'rule', 'password')))
                $mod = 'home';

            if (file_exists($mod . '.php'))
                include $mod . '.php';
            else
                include 'home.php';
            ?>
        </div>
    </div>
    <footer class="footer" style="background-color: #336699; color: #fff;">
        <div class="container">
            <p><span class="pull-right">
              Present By ©2016 <i class="fa fa-heart pulse"></i> <b><a style="color: #fff" target="_blank">Universitas Trilogi - Teknik Informatika</a></b>
          </span></p>
        </div>
    </footer>
</body>

</html>