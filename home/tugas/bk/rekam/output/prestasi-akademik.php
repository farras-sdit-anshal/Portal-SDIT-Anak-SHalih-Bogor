<h4>C. Prestasi Akademik</h4>

<ul><span class="und_line bold">Prestasi Akademik</span><ul>
    
    <?php
        if ($siswa->getInformasiBk(2,0,$tingkat)->num_rows >0){
            $karakter = $siswa->getInformasiBk (2,0,$tingkat);
            while ($data = mysqli_fetch_assoc ($karakter)){
                echo "<li class=text-justify>$data[keterangan]</li>";
            }
        }
        else {
            echo "<p>Belum ada data masukan</p>";
        }
    ?>     
</ul></ul>



        
   