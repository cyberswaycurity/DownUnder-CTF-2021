# Rabbit
Category: `misc`

This challenge required us to download a file. File type was bzip. We knew we had to decompress file 1000 times based on the description.
Every time it was decompressed it was a different type of compression. We decompressed a few times and the compression formats were determined
to be gzip, bzip, xz, and zip.

We created a bash script to automatically decompress the file 1000 times based on compression type.

After the script was done running we had a text file. We viewed the file and it was base64 encoded.
Encoding was:
```
RFVDVEZ7YmFidXNoa2FzX3YwZGthX3dhc19oM3IzfQ==
```
Decoding the string gave us the flag.
Flag:`DUCTF{babushkas_v0dka_was_h3r3}`
