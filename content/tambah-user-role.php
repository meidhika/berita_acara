<?php
if(isset($_POST['simpan'])){
    $level_id = $_POST['level_id'];
    $user_id = $_GET['id_user'] ?? '';
    $insert = mysqli_query($koneksi, "INSERT INTO user_levels (level_id, user_id ) 
    VALUES ('$level_id','$user_id')");
    header("location:?pg=user-role&id_user=".urlencode($user_id)."&tambah=berhasil");
}

//$id = $_GET['edit'] ?? '';
//isset : tidak kosong / isinya ada
//empty : kosong

if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $edit = mysqli_query($koneksi, "SELECT * FROM user_levels WHERE id='$id'");
    $rowEdit = mysqli_fetch_assoc($edit);
}

if(isset($_GET['delete'])){
    $id = $_GET['delete'];
    $edit = mysqli_query($koneksi, "SELECT * FROM user_levels WHERE id='$id'");
    $rowEdit = mysqli_fetch_assoc($edit);
    $user_id = $rowEdit['user_id'];
    $delete = mysqli_query($koneksi, "DELETE FROM user_levels WHERE id ='$id'");
    header("location:?pg=user-role&id_user=". $user_id . "&hapus=berhasil");
}


if(isset($_POST['edit'])){
    $user_id = $rowEdit['user_id'];
    $level_id = $_POST['level_id'];
    $id = $_GET['edit'];
    $update = mysqli_query($koneksi, 
    "UPDATE user_levels SET 
    level_id='$level_id' 
    WHERE id='$id'");
     header("location:?pg=user-role&id_user=".$user_id. "&ubah=berhasil");

}


$queryLevels = mysqli_query($koneksi, "SELECT * FROM levels ORDER BY id DESC");

?>

<form action=""  method="post">
    <div class="row mb-3">
        <div class="col-sm-2">
            <label for="" class="form-label">Nama Level</label>
        </div>
        <div class="col-sm-6">
            <select name="level_id" id="" class="form-control">
                <option value="">Pilih Level</option>
                <?php while($rowLevel = mysqli_fetch_assoc($queryLevels)) : ?>
                <option <?= isset($rowEdit) ? ($rowEdit['level_id'] == $rowLevel['id']) ? 'selected' : '' : ''?> value="<?= $rowLevel['id']?>"><?= $rowLevel['level_name']?></option>
                <?php endwhile ?>
            </select>
        </div>
    </div>
    
    <div class="mb-3 offset-md-2">
        <button class="btn btn-primary" type="submit" name="<?= isset($_GET['edit']) ? 'edit' :'simpan' ?>"><?= isset($_GET['edit']) ? 'Ubah' :'Simpan' ?></button>
        <a href="?pg=user" class="btn btn-secondary">Kembali</a>
    </div>

</form>