<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card">
                <img src="<?= base_url('assets/images/') . $detail['image']; ?>" class="card-img-top" alt="<?= $detail['judul']; ?>">
                <h5 class="card-title"><?= $detail['judul']; ?></h5>
                <p class="card-text"><?= $detail['isi']; ?></p>
                <a href="<?= base_url('post/daftarPost'); ?>" class="btn btn-primary">Kembali</a>
            </div>
        </div>
    </div>
</div>