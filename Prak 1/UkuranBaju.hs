-- NIM/Nama     : 16520203/Steven
-- Nama file    : UkuranBaju.hs
-- Topik        : Praktikum 1 Soal Ketiga
-- Tanggal      : 19 Feb 2021
-- Deskripsi    : Menentukan ukuran baju

module UkuranBaju where

-- DEFINISI DAN SPESIFIKASI
ukuranBaju :: Int -> Int -> Int
{- Menentukan ukuran baju dengan menerima masukan
berupa tinggi badan(dalam cm) dan berat badan
(dalam kg) -}

-- REALISASI
ukuranBaju t b =
    if (t > 170 && b <= 60) || (t > 150 && t <= 170 && b <= 80) then 2
    else if (t > 150 && t <= 170 && b > 80) || (t > 170 && b > 60 && b <= 80) then 3
    else if t <= 150 then 1
    else 4

-- APLIKASI
-- ukuranBaju 160 75
-- hasil : 2
-- ukuranBaju 145 45
-- hasil : 1
-- ukuranBaju 190 85
-- hasil : 4