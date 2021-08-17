-- NIM/Nama     : 16520203/Steven
-- Nama file    : KonversiSuhu.hs
-- Topik        : Praktikum 1 Soal Kedua
-- Tanggal      : 19 Feb 2021
-- Deskripsi    : Mengkonversi suhu dari Celcius menjadi Farenheit, Reamur, atau Kelvin

module KonversiSuhu where

-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> Char -> Float
{- Mengkonversikan suhu dari Celcius menjadi Farenheit, Reamur, atau Kelvin sesuai input yang diinginkan-} 

-- REALISASI
konversiSuhu f c =
    if c == 'R' then (f * 4 / 5)
    else if c == 'F' then (f * (9/5) + 32)
    else (f + 273.15)

-- APLIKASI
-- konversiSuhu 25 'R'
-- hasil : 20
-- konversiSuhu 37 'F'
-- hasil : 98.6
-- konversiSuhu (-30) 'K'
-- hasil : 243.15