# Steven
# 16520203
# 9 April 2021

# Program nilaiekstrim
# Program yang menerima sebuah integer sebagai isi array
# lalu menerima sebuah integer, misalnya x
# apabila x merupakan maksimum, outputkan "maksimum"
# apabila x merupakan minimum, outputkan "minimum"
# apabila keduanya, outputkan keduanya
# jika bukan dua-duanya, outputkan "N#A"

# KAMUS
# t = variabel bertipe integer
# array = variabel bertipe array
# cek_keberadaan = variabel betipe boolean
# maksimum dan minimum = variabel bertipe integer

# ALGORITMA
t = int(input()) # menerima input pengguna
array = [] # deklarasi array
cek_keberadaan = False

for i in range(t):
    isi = int(input())
    array.append(isi)
    
x = int(input()) # input nilai x
    
maksimum = max(array) # mencari nilai maksimum array
minimum = min(array) # mencari nilai minimum array

if x in array: # cek apakah x terdapat dalam array
    cek_keberadaan = True

if cek_keberadaan == True: # x terdapat dalam array    
    if x==maksimum and x==minimum:
        print("maksimum")
        print("minimum")
    elif x==maksimum:
        print("maksimum")
    elif x==minimum:
        print("minimum")
    else: # x bukanlah maksimum atau minimum
        print("N#A")
else: # x tidak ada dalam array
    print(x, "tidak ada")