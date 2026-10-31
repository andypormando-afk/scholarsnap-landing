# ScholarSnap Landing Page — Pitch Deck v3 Edition

Landing page statis yang dirancang ulang berdasarkan **ScholarSnap_Slides_Combined_Layout_Upgrade v3.pptx**, untuk presentasi produk dan konteks pendaftaran Telkomsel NextDev 12.

## Yang diperbarui

- Desain putih/navy/ungu mengikuti pitch deck; headline dan narasi mengadopsi slide 2–3.
- Karakter **Jord** dan **Louisa** digunakan dari gambar pada **slide 4**, tanpa mengubah isi gambarnya.
- Visual **Topic Study, Video Tutorial, ilustrasi** dari slide 8.
- Visual **pengaturan, pengerjaan, review Latihan Soal** dari slide 10.
- Visual **chat Jord** dari slide 12 dan **AISD** dari slide 14.
- Target dampak sosial dan usulan sinergi NextDev mengikuti slide 17 dan 19, dengan pengungkapan status yang jelas.
- Angka `>1.400 topik` dan `>130 ribu soal` berasal dari pitch deck; bukan angka pengguna atau pengukuran independen.

> Catatan: Data PISA 2025 **tidak dimasukkan**, untuk menghindari mengutip statistik yang belum dapat diverifikasi. Gambar tetap menggunakan aset berkas presentasi, bukan hasil generasi ulang.

## Cara memublikasikan di GitHub Pages

1. Buka `https://github.com/andypormando-afk/scholarsnap-landing`.
2. Klik `Add file` → `Upload files`.
3. Unggah **`index.html`** dan **seluruh folder `assets/` beserta file PNG di dalamnya**. Pastikan struktur URL file menjadi `assets/cover.png`, `assets/jord.png`, dan seterusnya.
4. Jika GitHub meminta konfirmasi penggantian `index.html`, lakukan melalui pengeditan file atau commit dari Git pada PC. Hindari menambahkan `index (1).html`—nama harus persis `index.html`.
5. Setelah commit, akses `https://andypormando-afk.github.io/scholarsnap-landing/` untuk memeriksa tampilan. Coba browser tanpa login dan ukuran mobile.

### Alternatif praktis untuk Windows (opsional)

Di folder hasil ekstraksi, ada `publish-to-github.ps1`. Jika Git for Windows sudah terpasang, jalankan dari PowerShell pada folder tersebut:

```powershell
.\publish-to-github.ps1
```

Skrip akan membuat clone baru di folder TEMP, memperlihatkan ringkasan file yang akan diganti, lalu meminta Anda **mengetik `PUBLISH`** sebelum commit/push. Skrip tidak menyentuh repository aplikasi utama dan tidak menjalankan GitHub Actions. Jika PowerShell menolak skrip karena execution policy, gunakan metode upload lewat web GitHub atau jalankan langkah git manual, bukan mengubah kebijakan keamanan sistem secara permanen.

### Metode git manual

Ekstrak zip, salin `index.html` dan `assets/` ke clone lokal repository, jalankan `git add index.html assets`, `git commit` dan `git push origin main`.


## Kebijakan keamanan dan keakuratan

- Semua kode adalah HTML/CSS statis; tidak ada database, API key, atau koneksi ke backend.
- Tidak memasukkan nama pengguna, statistik retensi, pendapatan, atau hasil pilot yang belum dibuktikan.
- Visual berasal dari pitch deck. Beberapa adalah ilustrasi konsep, bukan bukti bahwa semua fitur telah dirilis.
- Jangan unggah `.env`, kunci service role, atau source code aplikasi pribadi.

## Struktur

```
index.html
README.md
publish-to-github.ps1
assets/
  cover.png
  jord.png
  louisa.png
  study-topic.png
  video-tutorial.png
  illustration.png
  practice-config.png
  practice-question.png
  practice-review.png
  jord-chat.png
  aisd-illustration.png
  social-vision.png
```
