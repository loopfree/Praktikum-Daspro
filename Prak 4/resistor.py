# Steven
# 16520203
# 26 Maret 2021

# Program Resistor
# input: 3 riil: R1, R2, R3
# syarat: R1, R2, dan R3 lebih besar dari 0
# input: 1 char: hub
# output: hasil seri atau paralel resistor

# KAMUS
# R1, R2, R3: variabel bertipe riil/float
# hub: variabel bertipe char
# flag: variabel bertipe boolean

# ALGORITMA
flag = False # untuk mengulangi while apabila terdapat kesalahan input

while flag == False:
    R1 = float(input()) # masukkan nilai R1
    R2 = float(input()) # masukkan nilai R2
    R3 = float(input()) # masukkan nilai R3
    
    hub = input() # masukkan hubungan
    
    if R1 > 0 and R2 > 0 and R3 > 0: # syarat
        if hub=="s" or hub=="S": # syarat
            ans = R1 + R2 + R3 # persamaan untuk seri
            print("%.2f" % ans) # agar hasilnya 2 desimal
            flag = True # keluar dari loop
            
        elif hub=="p" or hub=="P": # syarat
            ans = 1 / ((1/R1) + (1/R2) + (1/R3)) # persamaan untuk paralel
            print("%.2f" % ans) # agar hasilnya 2 desimal
            flag = True # keluar dari loop
        else:
            print("Masukan salah")
       
    else:
        print("Masukan salah")
               
    
    