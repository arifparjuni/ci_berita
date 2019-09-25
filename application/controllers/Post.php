<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Post extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('form_validation');
    }
    
    public function index() {

        $this->form_validation->set_rules('judul','Judul','required');
        $this->form_validation->set_rules('isi','Isi','required');

        if($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header');
            $this->load->view('post/index');
            $this->load->view('templates/footer');
        } else {
            $judul = $this->input->post('judul');
            $isi = $this->input->post('isi');
            $upload_image = $_FILES['image'];

            if($upload_image) {
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size'] = '2048';
                $config['upload_path'] = './assets/images/';

                $this->load->library('upload', $config);

                if(!$this->upload->do_upload('image')) {
                    echo $this->upload->display_errors();
                    die();
                } else {
                    $data = [
                        'judul' => $this->input->post('judul'),
                        'isi' => $this->input->post('isi'),
                        'image' => $this->upload->data('file_name')
                    ];
                    $this->db->insert('post', $data);
                    $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">New Post Added!</div>');
                    redirect('post/daftarPost');
                }

            }
            
        }

    }

    public function daftarPost() {
        $data['daftar'] = $this->db->get('post')->result_array();

        $this->load->view('templates/header');
        $this->load->view('post/daftar', $data);
        $this->load->view('templates/footer');
    }

    public function detailPost($id) {
        $data['detail'] = $this->db->get_where('post', ['id' => $id])->row_array();

        $this->load->view('templates/header');
        $this->load->view('post/detail', $data);
        $this->load->view('templates/footer');
    }
    
}