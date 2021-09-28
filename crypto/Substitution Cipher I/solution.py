flag = ''
code = []

with open('output.txt') as f:
    string = f.read()
    for i in string:
        code.append(i)

for i in range(len(code)):
    current = ord(code[i])
    
    for j in range(33,127):
        f = 13*(j**2) + 3*j + 7

        if f == current:
            flag += chr(j)
            continue

print(flag)
        

