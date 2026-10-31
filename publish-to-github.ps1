# ScholarSnap landing page updater — OPTIONAL. Runs only on your Windows PC.
# No GitHub Actions workflows are created or invoked by this script.
$ErrorActionPreference = 'Stop'
$repo = 'https://github.com/andypormando-afk/scholarsnap-landing.git'
$source = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not (Test-Path -LiteralPath (Join-Path $source 'index.html'))) { throw 'index.html tidak ditemukan di folder skrip.' }
if (-not (Test-Path -LiteralPath (Join-Path $source 'assets\cover.png'))) { throw 'Folder assets belum lengkap. Ekstrak ZIP dahulu.' }
$git = Get-Command git -ErrorAction SilentlyContinue
if (-not $git) { throw 'Git tidak ditemukan. Install Git for Windows dan buka lagi PowerShell.' }
$destination = Join-Path $env:TEMP ("scholarsnap-landing-deploy-" + (Get-Date -Format 'yyyyMMdd-HHmmss'))
Write-Host "Mengambil repository ScholarSnap ke $destination"
& git clone --depth 1 --branch main $repo $destination
if ($LASTEXITCODE -ne 0) { throw 'Git clone gagal. Periksa internet dan login GitHub.' }
Copy-Item -LiteralPath (Join-Path $source 'index.html') -Destination (Join-Path $destination 'index.html') -Force
$targetAssets = Join-Path $destination 'assets'
New-Item -ItemType Directory -Force -Path $targetAssets | Out-Null
Get-ChildItem -LiteralPath (Join-Path $source 'assets') -Filter '*.png' -File | ForEach-Object {
  Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $targetAssets $_.Name) -Force
}
& git -C $destination add -- index.html assets
if ($LASTEXITCODE -ne 0) { throw 'git add gagal' }
& git -C $destination diff --cached --stat
& git -C $destination diff --cached --quiet
if ($LASTEXITCODE -eq 0) { Write-Host 'Tidak ada perubahan untuk diunggah.'; exit 0 }
Write-Host ''
Write-Host 'Perubahan di atas hanya menyangkut landing page. Repository aplikasi utama tidak disentuh.'
$answer = Read-Host 'Ketik PUBLISH untuk menyimpan dan mengunggah versi baru (atau Enter untuk batal)'
if ($answer -cne 'PUBLISH') { Write-Host 'Dibatalkan. Website online tidak berubah.'; exit 0 }
& git -C $destination commit -m 'Refresh ScholarSnap landing page from NextDev pitch deck v3'
if ($LASTEXITCODE -ne 0) { throw 'Commit gagal. Periksa konfigurasi git user.name/user.email.' }
& git -C $destination push origin main
if ($LASTEXITCODE -ne 0) { throw 'Push gagal. Periksa akses dan autentikasi GitHub.' }
Write-Host 'Commit berhasil. Periksa https://andypormando-afk.github.io/scholarsnap-landing/ setelah GitHub Pages menerbitkan pembaruan.'
