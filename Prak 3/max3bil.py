# Steven
# 16520203
# 19 Maret 2021

# DESKRIPSI
# Program yang membaca 3 buah integer dan menghasilkan bilangan yang terbesar

# KAMUS
# bil_satu, bil_dua, bil_tiga = variabel bertipe integer
# maks_tiga = variabel bertipe integer

# ALGORITMA
bil_satu = int(input())
bil_dua = int(input())
bil_tiga = int(input())

if bil_satu > bil_dua and bil_satu > bil_tiga:
    print(bil_satu)
elif bil_dua > bil_satu and bil_dua > bil_tiga:
    print(bil_dua)
else:
    print(bil_tiga)