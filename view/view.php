
		<tr>
			<th class="text-center">NO</th>
			<th class="text-center">NAMA HALTE</th>
			<th class="text-center">KORIDOR</th>
			<th class="text-center">LATITUDE</th>
			<th class="text-center">LONGITUDE</th>
			<th class="text-center">IMAGE</th>
			<th class="text-center">UBAH</th>
			<th class="text-center">HAPUS</th>
		</tr>
		<?php
		// Include / load file koneksi.php
		include "./db/konek.php";
		
		// Cek apakah variabel $keyword tersedia
		// Artinya cek apakah user telah mengklik tombol search atau belum
		// variabel $keyword ini berasal dari file search.php,
		// dimana isinya adalah apa yang diinput oleh user pada textbox pencarian
		if(isset($keyword)){ // Jika veriabel $keyword ada (user telah mengklik tombol search)
			$param = '%'.$keyword.'%';
			
			// Buat query untuk menampilkan data siswa berdasarkan NIS / Nama / Jenis Kelamin / Telp / Alamat
			$sql = $pdo->prepare("SELECT * FROM penanda WHERE nama_halte LIKE :na OR koridor LIKE :ko");
			$sql->bindParam(':na', $param);
			$sql->bindParam(':ko', $param);
			$sql->execute(); // Eksekusi querynya
		}else{ // Jika user belum mengklik tombol search
			// Buat query untuk menampilkan semua data siswa
			$sql = $pdo->prepare("SELECT * FROM penanda");
			$sql->execute(); // Eksekusi querynya
		}
		
		$no = 1; // Untuk penomoran tabel, di awal set dengan 1
		while($data = $sql->fetch()){ // Ambil semua data dari hasil eksekusi $sql
		?>
			<tr>
				<td class="text-center"><?php echo $no; ?></td>
				
				<td><?php echo $data['nama_halte']; ?></td>
				<td><?php echo $data['koridor']; ?></td>
				<td><?php echo $data['latitude']; ?></td>
				<td><?php echo $data['longitude']; ?></td>
				<td class="align-middle text-center">
					<img src="<?php echo $data['image']; ?>" width="180" height="100">
				</td>
				<td class="text-center"><a href="superadmin.php?page=kelola&aksi=edit&data=<?php echo $data['id_client']; ?>" class="btn btn-info"><i class='fa fa-edit'></i></a></td>
            	<td class="text-center"><a href="superadmin.php?page=kelola&hapus=true&data=<?php echo $data['id_client']; ?>" class="btn btn-danger"><i class='fa fa-remove'></i></a></td>
			</tr>
		<?php
			$no++; // Tambah 1 setiap kali looping
		}
		?>
	

