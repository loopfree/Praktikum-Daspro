-- NIM/Nama     : 16520203/Steven
-- Nama file    : SumKelipatanX.hs
-- Topik        : Praktikum 1 Soal Keenam
-- Tanggal      : 19 Feb 2021
-- Deskripsi    : Menghitung jumlah kelipatan X

module SumKelipatanX where

-- DEFINISI DAN SPESIFIKASI
sumKelipatanX :: Int -> Int -> Int -> Int
{- Menghitung jumlah kelipatan X dari batas yang diberikan-}

-- REALISASI
sumKelipatanX awal akhir x =
    if akhir /= awal then
        if mod akhir x == 0 then
            akhir + sumKelipatanX awal (akhir-1) x -- REKURENS
        else 0 + sumKelipatanX awal (akhir-1) x -- REKURENS
    else if mod awal x == 0 then
        awal -- BASIS
    else
        0 -- BASIS

-- APLIKASI
-- sumKelipatanX 1 1 1
-- hasil : 1
-- sumKelipatanX 1 10 2
-- hasil : 30
-- sumKelipatanX 5 14 3
-- hasil : 27