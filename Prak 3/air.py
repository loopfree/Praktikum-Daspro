# Steven
# 16520203
# 19 Maret 2021

# DESKRIPSI
# Program yang membaca sebuah nilai T dalam integer yang berupa celcius
# dan menyatakan bentuknya

# KAMUS
# suhu = variabel bertipe integer
# bentuk = variabel bertipe string

# ALGORITMA
suhu = int(input())

if suhu == 0:
    print("ANTARA PADAT-CAIR")
elif suhu == 100:
    print("ANTARA CAIR-GAS")
elif suhu < 0:
    print("PADAT")
elif suhu > 0 and suhu < 100:
    print("CAIR")
else:
    print("GAS")