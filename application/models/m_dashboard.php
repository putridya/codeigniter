<?php
class M_dashboard extends CI_Model
{
    public function tampil_data()
    {

        $this->db->select('*'); //untuk menampilkan semua data kedua tabel
        $this->db->from('acara');
        $this->db->join('penceramah', 'acara.ID_PENCERAMAH = penceramah.ID_PENCERAMAH'); //join untuk menggabungkan tabel
        $query = $this->db->get();
        return $query;
    }
    public function get_data_this_month()
    {
        $this->db->select('*');
        $this->db->like('TGL_ACARA', date('Y-m'));
        // $this->db->where('TGL_ACARA BETWEEN DATE_SUB(NOW(), INTERVAL 15 DAY) AND NOW()');
        // $this->db->where($conditions);
        $result = $this->db->get('acara');
        return $result;
    }
    public function get_data_next_week()
    {
        $this->db->select('*');
        // $this->db->like('TGL_ACARA', date('Y-m'));
        $this->db->where('TGL_ACARA >= NOW() AND TGL_ACARA  < NOW() + INTERVAL 7 DAY');
        $this->db->order_by('TGL_ACARA', 'ASC');
        // $this->db->where($conditions);
        $result = $this->db->get('acara');
        return $result;
    }
}
