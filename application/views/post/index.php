<div class="container text-center">
<h1>Post Berita</h1>
<div class="row justify-content-center">
<div class="col-md-10">
<form action="" method="post" enctype="multipart/form-data">
    <div class="form-group">
            <input type="text" name="judul" class="form-control" id="judul"
                placeholder="judul">
            <small class="text-danger"><?= form_error('judul'); ?></small>
    </div>
    <textarea class="form-control tinymce" name="isi" id="isi" cols="30" rows="10">
    </textarea>
    <small class="text-danger"><?= form_error('isi'); ?></small>
    <div class="corm-group mt-3">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
            </div>
            <div class="custom-file">
                <input type="file" class="custom-file-input" id="inputGroupFile01" name="image" aria-describedby="inputGroupFileAddon01">
                <label class="custom-file-label" for="inputGroupFile01">Choose file image</label>
            </div>
        </div>
    </div>
    <button class="btn btn-primary float-right" type="submit">Kirim</button>
    <a href="<?= base_url('post/daftarPost'); ?>" class="btn btn-warning float-left">Daftar Post</a>
</form>
</div>
</div>
</div>
