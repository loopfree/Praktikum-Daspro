-- NIM/Nama     : 16520203/Steven
-- Nama file    : DeretSegitiga.hs
-- Topik        : Praktikum 1 Soal Kelima
-- Tanggal      : 19 Feb 2021
-- Deskripsi    : Menghitung bilangan ke-n pada deret segitiga

module DeretSegitiga where

-- DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int
{-deretSegitiga merupakan fungsi untuk mencari nilai
bilangan ke-n pada deret segitiga.
Deret Segitiga: 1,3,6,10,15,... -}

-- REALISASI
deretSegitiga n
    |   n == 1 = 1 --BASIS
    |   otherwise = deretSegitiga(n-1) + n --REKURENS

-- APLIKASI
-- deretSegitiga 1
-- hasil : 1
-- deretSegitiga 5
-- hasil : 15
-- deretSegitiga 100
-- hasil : 5050