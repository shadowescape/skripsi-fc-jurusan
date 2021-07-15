<body class="latar">
    <div class="page-header">
        <h1 style="color: #fff;" align="center"><b>Aturan</b></h1>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover " style="background-color: #fff;">
            <thead>
                <tr style="background-color: #1e272e; color: #fff;">
                    <th>No</th>
                    <th>Aturan</th>
                </tr>
            </thead>
            <?php
            $rules = get_relasi(array());
            $no = 1;
            foreach ($rules as $kode_diagnosa => $val) :
                $rule = array();
                foreach ($val as $kode_gejala => $v) {
                    $rule[] = '<span class="text-info">' . $GEJALA[$kode_gejala] . '</span>';
                }
            ?>
                <tr>
                    <td>R<?= $no++ ?></td>
                    <td><strong>JIKA</strong> <?= implode('<br />&nbsp; &nbsp; &nbsp;<strong>DAN</strong> ', $rule) ?> <br /><strong>MAKA</strong> <span class="text-danger"><?= $DIAGNOSA[$kode_diagnosa]->nama_diagnosa ?></span></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
</body>