<body class="latar">
    <div class="page-header">
        <h1 style="color: #fff;" align="center"><b>Jurusan</b></h1>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" align="right">
            <form class="form-inline">
                <input type="hidden" name="m" value="diagnosa" />
                <div class="form-group">
                    <input class="form-control" type="text" placeholder="Pencarian. . ." name="q" value="<?= $_GET['q'] ?>" />
                </div>
                <div class="form-group">
                    <button class="btn tambah"><span class="glyphicon glyphicon-search"></span></button>
                </div>
                <span class="pull-left">
                    <div class="form-group">
                        <a class="btn tambah" href="?m=diagnosa_tambah"><span class="glyphicon glyphicon-plus"></span> Tambah Data</a>
                    </div>
                </span>
            </form>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered table-hover ">
                <thead>
                    <tr class="nw">
                        <th>No</th>
                        <th>Kode</th>
                        <th>Nama Jurusan</th>
                        <th>Penyebab</th>
                        <th width="550">Keterangan</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <?php
                $q = esc_field($_GET['q']);

                include "koneksi.php";
                $page = (isset($_GET['page']))? (int) $_GET['page'] : 1;
      
                // Jumlah data per halaman
                $limit = 1;

                $limitStart = ($page - 1) * $limit;
                            
                $SqlQuery = mysqli_query($con, "SELECT * FROM tb_diagnosa LIMIT ".$limitStart.",".$limit);
                  
                $no = $limitStart + 1;
                $rows = $db->get_results("SELECT * FROM tb_diagnosa
                                            WHERE kode_diagnosa LIKE '%$q%' OR nama_diagnosa LIKE '%$q%' OR penyebab LIKE '%$q%' OR solusi LIKE '%$q%'
                                            ORDER BY id");
                $no = 0;
                foreach ($rows as $row) : ?>
                    <tr>
                        <td><?= ++$no ?></td>
                        <td><?= $row->kode_diagnosa ?></td>
                        <td><?= $row->nama_diagnosa ?></td>
                        <td><?= $row->penyebab ?></td>
                        <td><?= $row->solusi ?></td>
                        <td class="nw">
                            <a class="btn btn-xs edit" href="?m=diagnosa_ubah&ID=<?= $row->kode_diagnosa ?>"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a class="btn btn-xs edit" href="aksi.php?act=diagnosa_hapus&ID=<?= $row->kode_diagnosa ?>" onclick="return confirm('Hapus data?')"><span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </table>
        </div>

        <div align="center">
    <ul class="pagination">
      <?php
      // Jika page = 1, maka LinkPrev disable
      if($page == 1){ 
      ?>        
        <!-- link Previous Page disable --> 
        <li class="disabled"><a href="#">Previous</a></li>
      <?php
      }
      else{ 
        $LinkPrev = ($page > 1)? $page - 1 : 1;
      ?>
        <!-- link Previous Page --> 
        <li><a href="index.php?page=<?php echo $LinkPrev; ?>">Previous</a></li>
      <?php
        }
      ?>

      <?php
      $SqlQuery = mysqli_query($con, "SELECT * FROM tb_diagnosa");        
      
      //Hitung semua jumlah data yang berada pada tabel Sisawa
      $JumlahData = mysqli_num_rows($SqlQuery);
      
      // Hitung jumlah halaman yang tersedia
      $jumlahPage = ceil($JumlahData / $limit); 
      
      // Jumlah link number 
      $jumlahNumber = 1; 

      // Untuk awal link number
      $startNumber = ($page > $jumlahNumber)? $page - $jumlahNumber : 1; 
      
      // Untuk akhir link number
      $endNumber = ($page < ($jumlahPage - $jumlahNumber))? $page + $jumlahNumber : $jumlahPage; 
      
      for($i = $startNumber; $i <= $endNumber; $i++){
        $linkActive = ($page == $i)? ' class="active"' : '';
      ?>
        <li<?php echo $linkActive; ?>><a href="index.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
      <?php
        }
      ?>
      
      <!-- link Next Page -->
      <?php       
      if($page == $jumlahPage){ 
      ?>
        <li class="disabled"><a href="#">Next</a></li>
      <?php
      }
      else{
        $linkNext = ($page < $jumlahPage)? $page + 1 : $jumlahPage;
      ?>
        <li><a href="index.php?page=<?php echo $linkNext; ?>">Next</a></li>
      <?php
      }
      ?>
    </ul>
  </div>

    </div>
</body>