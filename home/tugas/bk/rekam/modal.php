<?php    
    /*
     * Memanggil user guru atau walikeas
    */
    
    /*
     *---------------------------
    */
    function getList ($nama) {
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM base_data_siswa WHERE nama_siswa LIKE '%$nama%'";
        $mysqli = mysqli_query ($connect,$query);
        return $mysqli;
    }
    
    /*
     * Get detail peserta
     * Agumen pertama adalah nomor peserta
    */
    function getDetail ($idpeserta) {
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM biodata WHERE id = '$idpeserta'";
        $mysqli = mysqli_query ($connect,$query);
        return $mysqli;
    }
    
    /*
     * get tugas from
    */
    function getJobDesc (){
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM tugas";
        $mysqli = mysqli_query ($connect,$query);
        return $mysqli;
    }
    
    /*
     * is the user already have an accsess or not
     * true if has an accsess and false if opposite
    */
    function isSetJobDesc ($id,$jobdesc){
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM akses_tugas WHERE id = '$id' AND deskripsi = '$jobdesc'";
        $mysqli = mysqli_query ($connect,$query);
        return $mysqli;
    }
    
    /*
     * Get detail siswa kelas
     * Agumen pertama adalah nis
    */
    function getClass ($idsiswa) {
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM base_data_kelas WHERE nis = '$idsiswa'";
        $mysqli = mysqli_query ($connect,$query);
        return $mysqli;
    }
    
?>