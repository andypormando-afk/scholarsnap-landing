# ScholarSnap Landing Page — Pre-Launch

Situs statis bahasa Indonesia untuk memperkenalkan ScholarSnap dan memberikan URL publik pada formulir pendaftaran NextDev. Tidak memakai server, database, API key, atau dependensi eksternal.

## Melihat di komputer

Buka `index.html` dengan browser. Untuk pengujian lokal dengan Python (opsional): `python -m http.server 8000` lalu buka `http://localhost:8000`.

## Publikasi cepat dengan GitHub Pages

1. Buat **repository publik BARU** bernama misalnya `scholarsnap-landing` (jangan memakai repo kode aplikasi atau mengunggah rahasia).
2. Unggah hanya `index.html` dan `favicon.svg` ke root repository tersebut.
3. Masuk **Settings → Pages** dan pada **Build and deployment** pilih **Deploy from a branch** → `main` → `/ (root)` → Save.
4. Buka URL `https://NAMA-USER.github.io/scholarsnap-landing/` setelah halaman aktif. Ganti `NAMA-USER` dengan username GitHub sebenarnya; URL ini contoh, bukan URL yang sudah dibuat.
5. Periksa tampilan melalui mode incognito sebelum memasukkan URL pada formulir.

Tidak perlu GitHub Actions manual. GitHub Pages dapat menggunakan mekanisme deployment otomatis milik GitHub; jika larangan Anda mencakup seluruh eksekusi Actions, gunakan Vercel atau Netlify sebagai alternatif.

## Alternatif Vercel / Netlify

Buat proyek static site dan unggah folder ini (atau sambungkan repository landing page saja). Dapatkan URL HTTPS dari dashboard dan periksa apakah dapat dibuka tanpa login.

## Sebelum dikirim ke NextDev

- Ganti ikon `S` dengan logo ScholarSnap asli bila sudah tersedia.
- Ganti mockup percakapan di hero dengan screenshot aplikasi asli, jika sudah siap. Saat ini diberi keterangan sebagai **ilustrasi konsep**, bukan bukti produk aktual.
- Tinjau ulang semua fitur menurut status pengujian terkini.
- Tambahkan tautan demo yang benar-benar dapat diakses jika sudah tersedia, tanpa membocorkan kredensial produksi.
- Jangan unggah file `.env`, service role keys, atau private source code.

Situs tidak mengklaim jumlah pengguna, penghasilan, atau status peluncuran publik.
