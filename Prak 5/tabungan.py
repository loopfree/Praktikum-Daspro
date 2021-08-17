# Steven
# 16520203
# 9 April 2021

# Program Tabungan
# program yang menerima input integer, misalnya t
# dan menerima input sebanyak t kali
# lalu mengoutput kan jumlahnya

# KAMUS
# t = variabel bertipe integer
# array = variabel bertipe array
# hasil = veriabel bertipe integer

# ALGORITMA
t = int(input()) # masukkan jumlah pengulangan yg diinginkan
array = [] # deklarasi array
hasil = 0 # set value

for i in range(t): # lakukan looping
    masukan = int(input())
    array.append(masukan) # masukkan nilai ke dalam array
    
for i in array: # lakukan looping
    hasil += i
    
print(hasil)