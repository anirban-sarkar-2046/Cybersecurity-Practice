┌──(anirban㉿kali)-[~]
└─$ cd Downloads 
                                                                                               
┌──(anirban㉿kali)-[~/Downloads]
└─$ ls          
Hey_You.png         _Only_Few_Steps.jpg.extracted  ciphertext  strings
Only_Few_Steps.jpg  _PurpleThing.jpeg.extracted    dolls.jpg   table.txt
PurpleThing.jpeg    _dolls.jpg.extracted           files.zip
                                                                                               
┌──(anirban㉿kali)-[~/Downloads]
└─$ strings files.zip | grep pico
picoCTF{f1nd_15_f457_ab443fd1}
