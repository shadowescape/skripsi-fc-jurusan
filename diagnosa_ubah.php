<?php
$row = $db->get_row("SELECT * FROM tb_diagnosa WHERE kode_diagnosa='$_GET[ID]'");
?>

<body class="latar">
    <div class="page-header">
        <h1 style="color: #fff;" align="center"><b>Ubah Jurusan</b></h1>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <?php if ($_POST) include 'aksi.php' ?>
            <form method="post">
                <div class="form-group">
                    <label style="color: #fff;">Kode <span class="text-danger">*</span></label>
                    <input class="form-control" type="text" name="kode" readonly="readonly" value="<?= $row->kode_diagnosa ?>" />
                </div>
                <div class="form-group">
                    <label style="color: #fff;">Nama Jurusan <span class="text-danger">*</span></label>
                    <input class="form-control" type="text" name="nama" value="<?= set_value('nama', $row->nama_diagnosa) ?>" />
                </div>
                <!-- <div class="form-group">
                    <label style="color: #fff;">Penyebab</label>
                    <textarea class="form-control" name="penyebab"><?= set_value('keterangan', $row->penyebab) ?></textarea>
                </div>
                <div class="form-group">
                    <label style="color: #fff;">Solusi</label>
                    <textarea class="form-control" name="solusi"><?= set_value('keterangan', $row->solusi) ?></textarea>
                </div> -->
                <div class="form-group">
                    <button class="btn edit"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                    <a class="btn edit" href="?m=diagnosa"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
                </div>
            </form>
        </div>
    </div>
</body>