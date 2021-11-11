<!doctype html>
<html lang="en">
  <head>
    <base href="<?php echo base_url(); ?>"/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <title>BUKU</title>
  </head>
  <!-- contoh kalau backgroundnya ambil dari komputer/offline -->
  <body>
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href=""><?php echo $head['judul']; ?></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="">Beranda <span class="sr-only">(current)</span></a>
              </li>
              <?php if($this->session->userdata('id')) { ?>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                  <?php echo $this->session->userdata('nama'); ?>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="login/logout">Logout</a>
                </div>
              </li>
              <?php }else { ?>
                <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                  Akun
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="login">Login</a>
                </div>
              </li>
              <?php } ?>
            </ul>
            <form class="form-inline my-2 my-lg-0" action="welcome/cari_buku">
              <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
              <input class="form-control mr-sm-2" type="search" name="cari" placeholder="Search" aria-label="Search" required="">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>
        </nav>

        <div class="card mt-5">
          <div class="card-header text-center">
            Detail Buku
          </div>
          <div class="card-body">
            <h5 class="card-title">
              <?php if($this->session->userdata('id')) { ?>
                <a href="welcome/add_buku" class="btn btn-primary">Tambah</a>
                <form class="form-inline float-right" action="welcome/cari_buku" method="post">
                  <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                  <input class="form-control mr-sm-2" type="search" name="cari" placeholder="Cari judul buku" aria-label="Search" required="">
                  <button class="btn btn-info my-2 my-sm-0" type="submit">Cari</button>
                </form>
              <?php }else { ?>
                <form class="form-inline" action="welcome/cari_buku" method="post">
                  <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                  <input class="form-control mr-sm-2" type="search" name="cari" placeholder="Cari judul buku" aria-label="Search" required="">
                </form>
              <?php } ?>
            </h5>
            <hr>
            <?php if($this->session->flashdata('flash')): ?>
            <div class="alert alert-success"><?php echo $this->session->flashdata('flash'); ?></div>
            <?php endif; ?>
            <?php if($this->session->flashdata('error')): ?>
            <div class="alert alert-danger"><?php echo $this->session->flashdata('error'); ?></div>
            <?php endif; ?>
            <div class="row">
                <div class="col-md-12">
                  <div class="card mb-3" style="max-width: 100%;">
                    <div class="row no-gutters">
                      <div class="col-md-4">
                        <img src="assets/<?php echo $bukuid['gambar']; ?>" class="img-fluid">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Judul : <?php echo $bukuid['judul']; ?></h5>
                          <p class="card-text">Pengarang : <?php echo $bukuid['pengarang']; ?><br>
                          Penerbit : <?php echo $bukuid['penerbit']; ?></p>
                        </div>
                      </div>
                    </div>
                  </div>
                    <!-- <div class="card">
                      <div class="card-body">
                        <h5 class="card-title"><?php echo $bukuid['judul']; ?></h5>
                        <img src="assets/<?php echo $bukuid['gambar']; ?>" class="img-fluid">
                        <?php if($this->session->userdata('id')) { ?>
                        <hr>
                        <?php }else { ?>
                        <?php } ?>
                      </div>
                    </div> -->
                </div>
            </div>

          </div>
        </div>

    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

  </body>
</html>