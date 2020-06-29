
<div class="container mt-5 mb-5">
    <div class="media">
      <div class="media-body">
        <div class="row">
            <div class="col-11"><h5 class="mt-0"><?php echo $data['nama_siswa']?></h5></div>
            <div class="col-1">
                <!--Modal to share-->
                <i class="fa fa-bars" aria-hidden="true" data-toggle="modal" data-target="#target<?php echo $data['nis']?>"></i>
                <div class="modal fade" id="target<?php echo $data['nis']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Bagikan rekam prilaku <?php echo ucwords(strtolower($data['nama_siswa']))?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label><span class="war sr-only ml-1 badge badge-secondary">Email Harus diisi</span>
                                    <input type="email" class="alamat form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                
                                <div class="form-group" id="parent-list">
                                    <label for="exampleFormControlSelect1">Tingkat Kelas</label>
                                    <select class="form-control" id="list">
                                      <?php
                                        $currentTingkat = $kelas['tingkat'];
                                        for ( $i = $currentTingkat ; $i > 0 ; $i--){
                                            
                                            if ($i == $currentTingkat){
                                                echo "<option value=$i selected>Kelas ".$i."</option>";
                                            }
                                            else {
                                                echo "<option value=$i>Kelas ".$i."</option>";
                                            }
                                            
                                        }
                                        
                                      ?>
                                    </select>
                                    
                                </div>
                               
                                <a href="output/?<?php echo "order=pdf&nis=$data[nis]&tingkat=$kelas[tingkat]"?>" class="list-group-item list-group-item-action">Download as PDF - <i class="fa fa-file-pdf-o" aria-hidden="true"></i></a>
                                <a email="none" href="<?php echo "order=email&nis=$data[nis]&tingkat=$kelas[tingkat]"?>" class="email list-group-item list-group-item-action">Send to email - <i class="fa fa-envelope" aria-hidden="true"></i></a>
                            
                                <a href="#" class="list-group-item list-group-item-action disabled"><i class="fa fa-exclamation" aria-hidden="true"></i> Send to Whats App <small>on develop</small> - <i class="fa fa-whatsapp" aria-hidden="true"></i></a>
                                
 
                            <small class="text-muted">Setiap rekam prilaku yang dikirim tercatat nama pengirim dan target pengiriman, gunakan dengan bijak</small>
                            
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
        </div>
        
        <p>adalah siswa <?php ?> dengan nomor induk siswa <?php echo $data['nis'] ?>, kelas <?php echo $kelas['tingkat']."".$kelas['kelas']?>.</p>
        
        <div class="container">
            <div class="row">
              <div class="col">
                <a class="btn btn-success btn-lg btn-block" href="input/?nis=<?php echo $data['nis']; ?>">Karakteristik Perkembangan</a>
              </div>
              <div class="col">
                <a class="btn btn-success btn-lg btn-block" href="input-1/?nis=<?php echo $data['nis']; ?>">Prestasi Kademik</a>
              </div>
              <div class="col">
                <a class="btn btn-success btn-lg btn-block" href="input-2/?nis=<?php echo $data['nis']; ?>">Bakat & Minat</a>
              </div>
            </div>
            
            <div class="row mt-3">
              <div class="col">
                <a class="btn btn-success btn-lg btn-block" href="input-3/?nis=<?php echo $data['nis']; ?>">Motivasi Belajar</a>
              </div>
              <div class="col">
                <a class="btn btn-success btn-lg btn-block" href="input-4/?nis=<?php echo $data['nis']; ?>">Latar Belakang Keluarga</a>
              </div>
              <div class="col">
                <a class="btn btn-success btn-lg btn-block" href="input-5/?nis=<?php echo $data['nis']; ?>">Catatan Anekdot</a>
              </div>              
            </div>
          </div>

      </div>
    </div>
</div>
