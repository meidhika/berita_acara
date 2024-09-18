<?php
if(isset($_POST['simpan'])){
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
    $password = sha1($_POST['password']);
    $insert = mysqli_query($koneksi, "INSERT INTO users (fullname, email, password) 
    VALUES ('$fullname','$email', '$password')");
    header("location:?pg=user&tambah=berhasil");
}

//$id = $_GET['edit'] ?? '';
//isset : tidak kosong / isinya ada
//empty : kosong

if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $edit = mysqli_query($koneksi, "SELECT * FROM users WHERE id='$id'");
    $rowEdit = mysqli_fetch_assoc($edit);
}

if(isset($_POST['edit'])){
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
    $password = sha1($_POST['password']);
    $id = $_GET['edit'];
    $update = mysqli_query($koneksi, "UPDATE users SET fullname='$fullname', email='$email', password='$password' WHERE id='$id'");
     header("location:?pg=user&ubah=berhasil");

}

if(isset($_GET['delete'])){
    $id = $_GET['delete'];
    $delete = mysqli_query($koneksi, "DELETE FROM users WHERE id ='$id'");
    header("location:?pg=user&hapus=berhasil");
}

?>

<form action=""  method="post">
    <div class="row mb-3">
        <div class="col-sm-2">
            <label for="" class="form-label">Nama Pengguna</label>
        </div>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="fullname" required placeholder="Nama Pengguna" value="<?= $rowEdit['fullname'] ?? ''?>">
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-sm-2">
            <label for="" class="form-label">Email</label>
        </div>
        <div class="col-sm-6">
            <input type="email" class="form-control" name="email" required placeholder="Email" value="<?= $rowEdit['email'] ?? ''?>">
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-sm-2">
            <label for="" class="form-label">Password</label>
        </div>
        <div class="col-sm-6">
            <input type="password" class="form-control" name="password" required placeholder="Password" value="<?= $rowEdit['password'] ?? ''?>">
        </div>
    </div>
    <div class="mb-3 offset-md-2">
        <button class="btn btn-primary" type="submit" name="<?= isset($_GET['edit']) ? 'edit' :'simpan' ?>"><?= isset($_GET['edit']) ? 'Ubah' :'Simpan' ?></button>
        <a href="?pg=user" class="btn btn-secondary">Kembali</a>
    </div>

</form>