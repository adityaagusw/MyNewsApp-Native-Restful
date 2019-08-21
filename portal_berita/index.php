<?php 
require_once("mysqli.php");//koneksi $kabel
$last_update = date('H:i A');
$sekarang = date('yyyy/mm/dd')
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SINDIKAT - ADMINISTRATOR</title>
    <!-- Theme style -->
    <link rel="stylesheet" href="../../assets/dist/css/AdminLTE.min.css">

    <!-- Ionicons -->
    <link rel="stylesheet" href="../../assets/bower_components/Ionicons/css/ionicons.min.css">

    <!-- Custom fonts for this template-->
    <link href="../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../assets/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin.css" rel="stylesheet">

    <!-- Date Picker -->
    <link rel="stylesheet" href="../../assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

</head>

<body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

        <a class="navbar-brand mr-1" href="index.html">SINDIKAT</a>

        <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
            <i class="fas fa-bars"></i>
        </button>

        <!-- Navbar Search -->
        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
            </div>
            </div>
        </form>

        <!-- Navbar -->
        <ul class="navbar-nav ml-auto ml-md-0">
            <a href="#" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-power-off fa-fw red"></i>
            </a>
        </ul>

    </nav>

    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="sidebar navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="../own">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span> Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="user/">
                    <i class="fas fa-fw fa-user"></i>
                    <span> Users</span></a>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Berita</span>
                </a>
                <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                    <a class="dropdown-item" href="login.html">Semua Berita</a>
                    <a class="dropdown-item active" href="tulis-berita/">Tulis Berita</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="pelayanan">
                    <i class="fas fa-fw fa-money-bill"></i>
                    <span> Pelayanan</span></a>
            </li>
        </ul>

        <div id="content-wrapper">

            <div class="container-fluid">

                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Berita</a>
                    </li>
                    <li class="breadcrumb-item active">Tulis Berita</li>
                </ol>


                <!-- Area Chart -->
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-pen"></i>
                        Tulis Berita Baru
                    </div>
                    <form class="form-horizontal" name="new_berita" enctype="multipart/form-data" role="form" method="post" action="">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card mb-3" style="width:auto;">
                                    <div class="card-header">
                                        <i class="fas fa-image"></i>
                                        Thumbnail (JPG/JPEG/PNG)
                                    </div>
                                    <div class="card-body">
                                        <input style="width: 260px;" type="file" multiple name="gambar_utama" id="gambar" maxlength="255" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                            <label style="width:300px;display:inline-block"> Penulis</label>
                            <label style="width:300px;display:inline-block"> Kategori</label>
                            <br>
                                <input style="margin-bottom:13px; width:300px; display:inline-block;" type="text" class="form-control" maxlength="50" placeholder="Nama Penulis">
                                    <select style="display:inline-block; width:386px;" class="form-control" name="ktgri" required=""> 
                                    <option value="" >Pilih Kategori Berita</option> 
                                    <option value="6">News</option>
                                    <option value="1">Entertainment</option>
                                    <option value="2">Bisnis</option>
                                    <option value="3">Sports</option>
                                    <option value="4">Otomotif</option>
                                    <option value="5">Food and Travel</option>
                </select>
                                <input autocomplete="off" class="form-control" name="judul" type="text" placeholder="Judul Berita" maxlength="255" required="">
                            </div>
                        </div>
                      <div class="row">
                        <div class="col-lg-12">
                        <textarea name="editor" class="ckeditor" id="txt" required=""></textarea>
                        </div>
                      </div>
                      <div style="margin-top:10px;">
                        <span>Tanggal Terbit Berita</span><br>
                        <input style="display:inline-block;width:145px;" class="form-control" maxlength="25" id="datepicker" type="text" name="tgl" data-inputmask="'alias': 'yyyy-mm-dd'" data-mask required="">
                        <input style="display:inline-block;width:auto;margin-right:5px;" type="submit" name="terbit" value="Terbitkan Berita" class="form-control btn-success" maxlength="255">
                        <input style="display:inline-block;width:auto;color:#fff;" type="submit" name="daff" value="Masukkan Ke Daff" class="form-control btn-warning" maxlength="255">
                      </div>
                      <?php
                      if(isset($_POST['terbit'])){
                        $judul = $_POST['judul'];
                        $id_admin = $intip['id_adm'];
                        $nama = $intip['nama_adm'];
                        $isi = $_POST['editor'];
                        $tanggal = $_POST['tgl'];
                        $kategori = $_POST['ktgri'];
                        $nama_foto = $_FILES['gambar_utama']['name'];
                        $acak = rand(1,999);
                        $foto_baru = $acak.$nama_foto;
                        $lokasi_foto = $_FILES['gambar_utama']['tmp_name'];
                        $tipe_file = $_FILES['gambar_utama']['type'];
                            if(!empty($isi)){
                                if($tipe_file == "image/jpeg" || $tipe_file == "image/png"){
                                    $pindah = move_uploaded_file($lokasi_foto, "assets/img/posting/".$foto_baru);
                                        if($pindah){
                                            $upload = mysqli_query($kabel,"INSERT INTO berita (
                                            penulis,
                                            judul,
                                            id_adm,
                                            foto_utama,
                                            isi,
                                            id_kategori,
                                            tanggal,
                                            stat_berita
                                                ) values (
                                                    '$nama',
                                                    '$judul',
                                                    '$id_admin',
                                                    '$foto_baru',
                                                    '$isi',
                                                    '$kategori',
                                                    '$tanggal',
                                                    '1')");
                                            if($upload){
                                                echo "<script>alert('Berita Berhasil di Terbitkan !')</script>";
                                            }else{
                                                echo '<br><div class="callout callout-danger">BERITA GAGAL DI TERBITKAN !!</div>';
                                            } 
                                    }else{
                                        echo '<br><div class="callout callout-danger"><b>GAMBAR UTAMA GAGAL DI UPLOAD !!</b></div>';
                                    }
                                    }else{
                                        echo '<br><div class="callout callout-warning"><b>Maaf, Tipe gambar yang diupload harus berupa JPG / JPEG / PNG</b></div>';
                                    }
                                }else{
                                        echo '<br><div class="callout callout-danger"><b>KONTEN BERITA WAJIB DI ISI !</b></div>';
                            }
                        }
                        ?>
                    </div>
                    </form>
                    <div class="card-footer small text-muted">Hari ini pukul
                        <?php echo "$last_update"; ?>
                    </div>
                </div>
            
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout">Logout</a>
                </div>
            </div>
        </div>
    </div>


    
    <!-- Bootstrap core JavaScript-->
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Panjang input -->
    <script src="../../assets/js/bootstrap-maxlength.min.js"></script>
    
    <!-- CKeditor -->
    <script type="text/javascript" src="../assets/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="../assets/ckeditor/adapters/jquery.js"></script>

    <!-- bootstrap datepicker -->
    <script src="../../assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>


    <!-- Custom scripts for all pages-->
    <script src="../assets/js/sb-admin.min.js"></script>

    <!-- InputMask -->
  <script src="../../assets/plugins/input-mask/jquery.inputmask.js"></script>
  <script src="../../assets/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
  <script src="../../assets/plugins/input-mask/jquery.inputmask.extensions.js"></script>
</body>
<script type="text/javascript">
      $(function () {

      //Datemask dd/mm/yyyy
      $('#datemask').inputmask('yyyy-mm-dd', { 'placeholder': '<?php echo $sekarang;?>' })
      $('[data-mask]').inputmask()

      //Date picker
      $('#datepicker').datepicker({
        format: "yyyy-mm-dd",
        autoclose: true
      });
    });

    //Batas Karakter
    $('textarea').maxlength({
      alwaysShow: false,
      threshold: 10,
      warningClass: "label label-success",
      limitReachedClass: "label label-danger",
      separator: ' out of ',
      preText: 'You write ',
      postText: ' chars.',
      validate: true
      });
    $('input').maxlength({
      alwaysShow: false,
      threshold: 10,
      warningClass: "label label-success",
      limitReachedClass: "label label-danger",
      separator: ' out of ',
      preText: 'You write ',
      postText: ' chars.',
      validate: true
      });

      function validasiTerbit(){
            if (document.new_berita.gambar_utama.value == ""){
                alret("Gambar Harus Di Upload !");
            }
            if (document.new_berita.ktgri.value == ""){
                alret("Kategori Harus di pilih !!");
            }
            if (document.new_berita.editor.value == ""){
                alret("Isi Berita Harus Di Isi !!!");
            }
      }
    </script>
</html>