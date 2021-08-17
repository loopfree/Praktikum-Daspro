# Steven
# 16520203
# 9 April 2021

# KAMUS

# ALGORITMA
letter = list()
numIn = -1

def executeS():
    smallFirst = -1
    smallLetter = 'a'
    for i in range(len(letter)):
        if ord('a') <= ord(letter[i]) <= ord('z'):
            smallFirst = i
            smallLetter = letter[i]
            break
    if smallFirst == -1:
        return 'Tidak ada huruf kecil'
    else:
        return str(smallFirst+1) + ' ' + smallLetter

def executeL():
    largeFirst = -1
    largeLetter = 'a'
    for i in range(len(letter)):
        if ord('A') <= ord(letter[i]) <= ord('Z'):
            largeFirst = i
            largeLetter = letter[i]
            break
    if largeFirst == -1:
        return 'Tidak ada huruf besar'
    else:
        return str(largeFirst+1) + ' ' + largeLetter
    
def executeX():
    symbolFirst = -1
    symbolLetter = '#'
    for i in range(len(letter)):
        if not letter[i].isalpha():
            symbolFirst = i
            symbolLetter = letter[i]
    if symbolFirst == -1:
        return 'Semua huruf'
    else:
        return str(symbolFirst+1) + ' ' + symbolLetter

while not( 0 < numIn <= 100 ):
    numIn = int(input())
    if not(0 < numIn <= 100):
        print("Masukan salah. Ulangi!")
        
for i in range(numIn):
    letter.append(input())
   
    
executeDict = {}
executeDict['L'] = executeL
executeDict['l'] = executeL
executeDict['S'] = executeS
executeDict['s'] = executeS
executeDict['X'] = executeX
executeDict['x'] = executeX

processIn = input()
if processIn in executeDict:
    print(executeDict[processIn]())
else:
    print('Tidak diproses')