    
    <script src="<?= base_url('assets/jquery/') . 'jquery3.js'; ?>"></script>
    <script src="<?= base_url('assets/popper/') . 'popper.js'; ?>"></script>
    <script src="<?= base_url('assets/js/') . 'bootstrap.js'; ?>"></script>
    <script>
    $('.custom-file-input').on('change', function() {
        let fileName = $(this).val().split('\\').pop();
        $(this).next('.custom-file-label').addClass("selected").html(fileName);
    });
</script>
</body>
</html>