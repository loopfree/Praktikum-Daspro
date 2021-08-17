-- NIM/Nama     : 16520203/Steven
-- Nama file    : TesKategori.hs
-- Topik        : Praktikum 1 Soal Keempat
-- Tanggal      : 19 Feb 2021
-- Deskripsi    : Menenentukan kategori seseorang

module TesKategori where

-- DEFINISI DAN SPESIFIKASI
tesKategori :: Int -> Int -> Int -> Bool
{- Menentukan kategori seseorang dengan menerima 
input berupa tinggi badan(dalam cm), berat badan
(dalam kg), dan kategori kendaraan atraksi(1 sampai 4) -}

-- REALISASI
tesKategori t b k =
    if t > 100 && b <= 150 && (k == 2 || k == 3 || k ==4) then True
    else if t <= 100 && b <= 150 && k == 1 then True
    else if t <= 100 && b > 30 && b <= 150 && (k == 1 || k == 2) then True
    else if b > 150 && t <= 100 && k == 2 then True
    else if b > 150 && t > 100 && t <= 200 && (k == 2 || k == 3) then True
    else if k == 0 then True
    else False

-- APLIKASI
-- tesKategori 120 80 1
-- hasil : False
-- tesKategori 120 80 4
-- hasil : True
-- tesKategori 201 160 0