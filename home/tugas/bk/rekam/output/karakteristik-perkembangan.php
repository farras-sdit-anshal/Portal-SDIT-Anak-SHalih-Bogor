<h4>B. Karakteristik Perkembangan</h4>

<ul><span class="und_line bold">Kognitif</span><ul>
    
    <?php
        if ($siswa->getInformasiBk(1,0,$tingkat)->num_rows >0){
            $karakter = $siswa->getInformasiBk (1,0,$tingkat);
            while ($data = mysqli_fetch_assoc ($karakter)){
                echo "<li class=text-justify>$data[keterangan]</li>";
            }
        }
        else {
            echo "<p>Belum ada data masukan</p>";
        }
    ?>     
</ul></ul>

<ul><span class="und_line bold">Sosial</span><ul>
    
    <?php
        if ($siswa->getInformasiBk(1,1,$tingkat)->num_rows >0){
            $karakter = $siswa->getInformasiBk (1,1,$tingkat);
            while ($data = mysqli_fetch_assoc ($karakter)){
                echo "<li class=text-justify ml-5>$data[keterangan]</li>";
            }
        }
        else {
            echo "<p>Belum ada data masukan</p>";
        }
    ?>     
</ul></ul>

<ul><span class="und_line bold">Emosi</span><ul>
    
    <?php
        if ($siswa->getInformasiBk(1,2,$tingkat)->num_rows >0){
            $karakter = $siswa->getInformasiBk (1,2,$tingkat);
            while ($data = mysqli_fetch_assoc ($karakter)){
                echo "<li class=text-justify>$data[keterangan]</li>";
            }
        }
        else {
            echo "<p>Belum ada data masukan</p>";
        }
    ?>     
</ul></ul>

<ul><span class="und_line bold">Adab & Akhlak</span><ul>
    
    <?php
        if ($siswa->getInformasiBk(1,3,$tingkat)->num_rows >0){
            $karakter = $siswa->getInformasiBk (1,3,$tingkat);
            while ($data = mysqli_fetch_assoc ($karakter)){
                echo "<li class=text-justify>$data[keterangan]</li>";
            }
        }
        else {
            echo "<p>Belum ada data masukan</p>";
        }
    ?>     
</ul></ul>

<ul><span class="und_line bold">Bahasa/Interaksi-Komunikasi</span><ul>
    
    <?php
        if ($siswa->getInformasiBk(1,4,$tingkat)->num_rows >0){
            $karakter = $siswa->getInformasiBk (1,4,$tingkat);
            while ($data = mysqli_fetch_assoc ($karakter)){
                echo "<li class=text-justify>$data[keterangan]</li>";
            }
        }
        else {
            echo "<p>Belum ada data masukan</p>";
        }
    ?>     
</ul></ul>  

        
   