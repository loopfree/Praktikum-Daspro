-- Nama     : Steven
-- NIM      : 16520203
-- Tanggal  : 6 Maret 2021

module ListOfInteger where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

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

-- DEFINISI DAN SPESIFIKASI
setDiff :: [Int] -> [Int] -> [Int]
{- Fungsi yang menerima masukan dua buah list of integer 
(l1 dan l2) dengan elemen unik dan terurut membesar dan 
mengembalikan sebuah list of integer yang elemennya adalah 
semua elemen l1 yang tidak ada di l2. -}
setDiffHelper :: [Int] -> [Int] -> [Int] -> [Int]
setDiffHelperHelper :: Int -> [Int] -> Bool

-- REALISASI
setDiff l1 l2 = setDiffHelper l1 l2 []

setDiffHelper l1 l2 r 
    |   isEmpty l1 = r
    |   setDiffHelperHelper (head l1) l2 = setDiffHelper (tail l1) l2 r
    |   otherwise = setDiffHelper (tail l1) l2 (konsDot r (head l1))

setDiffHelperHelper i l 
    |   isEmpty l = False
    |   (head l) == i = True
    |   otherwise = setDiffHelperHelper i (tail l)

-- APLIKASI
-- setDiff [2,4,6,8,10] [3,4,5,6]
-- hasilnya: [2,8,10]
-- setDiff [] [2,3,4,5]
-- hasilnya: []
-- setDiff [4,6,8,13,26] [ ]
-- hasilnya [4,6,8,13,26]


