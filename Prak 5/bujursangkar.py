# Steven
# 16520203
# 9 April 2021

# Program BujurSangkar
# Menerima input "sisi" berupa integer lalu mengoutputkan
# luas apabila input benar (input > 0)

#KAMUS
# sisi = veriabel bertipe integer

# ALGORITMA
sisi = int(input()) # menerima input pengguna

if sisi > 0: # cek syarat
    print(sisi*sisi)
else: # sisi <= 0
    print("Sisi harus > 0")
    

