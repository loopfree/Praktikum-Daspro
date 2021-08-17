# Steven
# 16520203
# 26 Maret 2021

# Program GambarSegitiga
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar segitiga sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int


def GambarSegitiga(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar segitiga dengan tinggi sebesar N sesuai spesifikasi soal
# Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
    
    # Pola Atas
    for i in range(1,( (N // 2) + 1 )): # Mencetak pola untuk baris ke X sebelum tengah
        for j in range(0, N-(i*2-1)): # Mengosongkan baris
            print(' ', end='')
        for j in range(0, i * 2 - 1): # Memberi bintang pada baris
            print('*', end='')
        print() # Enter
      
    # Pola Tengah    
    for i in range(N):
        print('*', end='')
    print() # Enter
    
    # Pola Bawah
    for i in [i for i in range(1, (N // 2) + 1)][::-1]: # Mencetak pola untuk baris ke X setelah tengah
        for j in range(0, N - ( i * 2 - 1 ) ): # Mengosongkan baris
            print(' ', end='')
        for j in range(0, i * 2 - 1): # Memberi bintang pada baris
            print('*', end='')
        print() # Enter
        
def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
    return (( N > 0 ) and (N % 2 == 1))

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarSegitiga(N)
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")