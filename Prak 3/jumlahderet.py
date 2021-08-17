# Steven
# 16520203
# 19 Maret 2021

# DESKRIPSI
# Proggram yang membaca sebuah integer dan menuliskan hasil perhitungan deret ganjilnya

# KAMUS
# n = variabel bertipe integer
# ans = variabel bertipe integer

# ALGORITMA
n = int(input())

ans = 0

for i in range(1,n+1,2):
    ans += i
    
print(ans)