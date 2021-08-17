# Steven
# 16520203
# 19 Maret 2021

# DESKRIPSI
# Program yang menerima 3 buah input berupa 1 integer dan 2 char
# dan mengoutputkan bentuk segiempat dengan ukuran integer kuadrat
# dengan sisi luar berisi char pertama dan char kedua sebagai isinya

# Asumsi integer yang dimasukkan > 0

# KAMUS
# sisi = variabel bertipe integer
# char_satu, char_dua = variabel bertipe char

# ALGORITMA
sisi = int(input())
char_satu = input()
char_dua = input()

if sisi <= 0:
    print("Masukan tidak valid")
    
elif char_satu == char_dua:
    print("Masukan tidak valid")
    
else:
    for i in range(sisi):
        for j in range(sisi):
            if (i == 0) or (j == 0) or (i == sisi - 1) or (j == sisi -1 ):
                print(char_satu, end='')
            else:
                print(char_dua,end='')
        print()