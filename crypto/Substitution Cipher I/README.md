# Substitution Cipher I
category: `crypto`

## Challenge description
This challenge had you download output.txt and substitution-cipher-i.sage files. The sage file had the original code that create
the output.txt file.

## Solution
Looking at output.txt gave a string of non-ASCII characters and the sage file gave the python code that produced output.txt file.

output.txt file:
```
𖿫𖝓玲𰆽𪃵𢙿疗𫢋𥆛🴃䶹𬑽蒵𜭱𫢋𪃵蒵🴃𜭱𩕑疗𪲳𜭱窇蒵𱫳
```
substitution-cipher-i.sage file:
```python
def encrypt(msg, f):
    return ''.join(chr(f.substitute(c)) for c in msg)

P.<x> = PolynomialRing(ZZ)
f = 13*x^2 + 3*x + 7

FLAG = open('./flag.txt', 'rb').read().strip()

enc = encrypt(FLAG, f)
print(enc)
```
The sage file is based on the open-source mathematical software of the same name.

After reviewing the documentation for sage we determined that the sage script was substituting
the decimal value of the flag into the defined function and giving a new decimal value. We 
had to solve for the original value by trial and error. We automated the trial and error part with the
python script below.

solution.py:
```python
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
````
flag: `DUCTF{sh0uld'v3_us3d_r0t_13}
