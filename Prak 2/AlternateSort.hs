-- STEVEN
-- 16520203
-- 6 Maret 2021

module AlternateSort where
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

-- DESINISI DAN SPESIFIKASI
alternateSort :: [Int] -> [Int]
splitAlternateSortFirst :: [Int] -> Int -> Int -> [Int]
splitAlternateSortSecond :: [Int] -> Int -> Int -> [Int]
alternateSortHelper :: [Int] -> [Int] -> [Int] -> [Int]
helpHelp :: [Int] -> Int -> Bool -> Int
help :: [Int] -> Int -> Bool -> Int
removeFound :: Int -> [Int] -> [Int] -> [Int]

-- REALISASI
helpHelp l i c
    |   isEmpty l = i
    |   c == False = helpHelp (tail l) (head l) True
    |   (head l) < i = helpHelp (tail l) (head l) True
    |   otherwise = helpHelp (tail l) i True


help l i c
    |   isEmpty l = i
    |   c == False = help (tail l) (head l) True
    |   (head l) > i = help (tail l) (head l) True
    |   otherwise = help (tail l) i True


removeFound i l1 l2
    |   isEmpty l1 = l2
    |   i == (head l1) = removeFound i (tail l1) l2
    |   otherwise = removeFound i (tail l1) (konso (head l1) l2)
    
alternateSort l 
    | mod (length l) 2 == 0 = alternateSortHelper (splitAlternateSortFirst l (div (length l) 2) 0 ) (splitAlternateSortSecond l (div (length l) 2) 0 ) []
    | otherwise = alternateSortHelper (splitAlternateSortFirst l ((div (length l) 2) + 1) 0 ) (splitAlternateSortSecond l (div (length l) 2) 0 ) []
splitAlternateSortFirst l len i 
    |   i == len = []
    |   otherwise = konso (head l) (splitAlternateSortFirst (tail l) len (i+1))

splitAlternateSortSecond l len i
    |   i == len = []
    |   otherwise = konsDot (splitAlternateSortSecond (init l) len (i+1) ) (last l)

alternateSortHelper l1 l2 l3
    |   (isEmpty l2) && (isEmpty l1) = l3
    |   (isEmpty l2) && (isOneElmt l1) = alternateSortHelper (tail l1) l2 (konso (head l1) l3)
    |   otherwise = alternateSortHelper (removeFound (help l1 0 False) l1 []) (removeFound (helpHelp l2 0 False) l2 []) (konso (helpHelp l2 0 False) (konso (help l1 0 False) l3))