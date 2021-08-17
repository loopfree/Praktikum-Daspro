# Steven
# 16520203
# 9 April 2021

# Program beratbadan
# Program menerima input berupa integer (valid = 30-200 (inklusif))
# program akan berhenti apabila input berupa -999

# Kamus
# stop = variabel bertipe boolean
# array = variabel bertipe array
# output1, output2, output3, output4 = variabel bertipe integer
# remove = variabel bertipe integer

# ALGORITMA
stop = False
array = []

output1 = 0 # banyak mahasiswa
output2 = 0 # berat <= 50
output3 = 0 # berat >= 100
output4 = 0 # rata-rata
removed = 0 # data yang tidak valid

while stop == False: # cek kondisi
    berat_badan = int(input())
    
    if berat_badan == -999: # cek syarat
        stop = True
    else: # berat_badan != 999
        array.append(berat_badan) # tambahkan ke array
        
if stop == True: # cek syarat
    for i in (array): # lakukan looping
        if 30 <= i <= 200: # cek syarat
            output1 += 1
            if i <= 50: # cek syarat
                output2 += 1
            
            if i >=100: # cek syarat
                output3 += 1
        else: # i < 30 atau i > 200
            removed += 1
            
if removed == 0 and array == []: # cek syarat
    print("Data kosong")

if removed == len(array) and array != []: # cek syarat
    print("Data kosong")

if len(array) != 0 and removed != len(array): # cek syarat
    for i in array: # lakukan looping
        if 30<=i<=200: # cek syarat
            output4 += i
    
    output4 = output4 / (len(array)-removed)
                
    print(output1)
    print(output2)
    print(output3)
    print(round(output4))