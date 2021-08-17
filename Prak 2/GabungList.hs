-- Nama     : Steven
-- NIM      : 16520203
-- Tanggal  : 6 Maret 2021

 module GabungList where

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1  

--DEFINISI DAN SPESIFIKASI
gabungList :: [Int] -> [Int] -> [Int]
{- gabungList menerima masukan dua buah list of integer l1 dan l2 dan menghasilkan
sebuah list of integer l3 yang sudah terurut membesar-}
masukList::Int->[Int]->[Int]
{- masukList menerima masukan 1 buah integer x dan 1 buah list of integer l, dan akan menghasilkan
list of integer gabungan dari x dan l dalam keadaan sorted-}

-- REALISASI
gabungList l1 l2
	|   isEmpty l1 = l2 -- BASIS
	|   otherwise =	gabungList (tail l1) (masukList (head l1) l2) -- REKURENS
		
masukList x l
	|   isEmpty l = konso x l -- BASIS
   |   (x<=(head l))= konso x l -- REKURENS
   |   otherwise = konso (head l) (masukList x (tail l)) -- REKURENS

-- APLIKASI
-- gabungList [1,3,0,4] [-9,-1,4]
-- hasilnya: [-9,-1,0,1,3,4,4]
-- gabungList [] [2,3,4,5]
-- hasilnya: [2,3,4,5]
-- gabungList [3,7,2] []
-- hasilnya: [2,3,7]