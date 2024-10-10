┌──(anirban㉿kali)-[~]
└─$ cd Downloads                  
                                                                                               
┌──(anirban㉿kali)-[~/Downloads]
└─$ ls
PurpleThing.jpeg  ciphertext  strings  table.txt
                                                                                               
┌──(anirban㉿kali)-[~/Downloads]
└─$ binwalk PurpleThing.jpeg                   

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             PNG image, 780 x 720, 8-bit/color RGBA, non-interlaced
41            0x29            Zlib compressed data, best compression
153493        0x25795         PNG image, 802 x 118, 8-bit/color RGBA, non-interlaced

                                                                                               
┌──(anirban㉿kali)-[~/Downloads]
└─$ binwalk -D 'png image:png' PurpleThing.jpeg 

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             PNG image, 780 x 720, 8-bit/color RGBA, non-interlaced
41            0x29            Zlib compressed data, best compression
153493        0x25795         PNG image, 802 x 118, 8-bit/color RGBA, non-interlaced

                                                                                               
┌──(anirban㉿kali)-[~/Downloads]
└─$ ls
PurpleThing.jpeg  _PurpleThing.jpeg.extracted  ciphertext  strings  table.txt
                                                                                               
┌──(anirban㉿kali)-[~/Downloads]
└─$ cd _PurpleThing.jpeg.extracted 
                                                                                               
┌──(anirban㉿kali)-[~/Downloads/_PurpleThing.jpeg.extracted]
└─$ ls
0.png  25795.png  29  29.zlib
                                                                                               
┌──(anirban㉿kali)-[~/Downloads/_PurpleThing.jpeg.extracted]
└─$ eog 25795.png 

//Ouput: ABCTF{b1nw4lk_is_us3ful}
