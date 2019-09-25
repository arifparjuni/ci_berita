<div class="container">
    <h1 class="text-center">Daftar Berita</h1>
    <?= $this->session->flashdata('message'); ?>
    <a class="btn btn-success"  href="<?= base_url('post'); ?>">Buat Post</a>
    <div class="row mt-5">
    <?php foreach($daftar as $da) : ?>
        <div class="col-md-4">
            <div class="card">
                <img src="<?= base_url('assets/images/') . $da['image']; ?>" class="card-img-top" alt="<?= $da['judul'] ?>">
                <div class="card-body">
                    <h5 class="card-title"><?= $da['judul'] ?></h5>
                    <p class="card-text"><?= word_limiter($da['isi'], 20); ?> Selengkapnya</p>
                    <a href="<?= base_url('post/detailPost/') . $da['id'];  ?>" class="btn btn-primary">Detail</a>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
    </div>
</div>