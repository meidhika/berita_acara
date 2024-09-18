<?php
$queryLevel = mysqli_query($koneksi, "SELECT * FROM levels ORDER BY id DESC");
?>
<div class="mb-3" align="right">
    <a href="?pg=tambah-level" class="btn btn-primary">Tambah Level</a>
</div>
<table class="table table-bordered">
    <thead>
        <tr>
            <th>No</th>
            <th>Nama Level</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php $no =1;
         while($rowLevel = mysqli_fetch_assoc($queryLevel)) :?>
        <tr>
            <td><?= $no++ ?></td>
            <td><?= $rowLevel['level_name']?></td>
            <td>
                <a 
                class="btn btn-success btn-xs"
                href="?pg=tambah-level&edit=<?= $rowLevel['id']?>">
                Edit 
                </a>
                | 
                <a 
                class="btn btn-danger btn-xs"
                onclick="return confirm('Apakah anda yakin akan menghapus data ini?')"
                href="?pg=tambah-level&delete=<?= $rowLevel['id']?>">
                Delete
                </a>
            </td>
        </tr>
        <?php endwhile?>
    </tbody>
</table>