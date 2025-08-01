┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ ls
MyFriendJohn.zip
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ unzip MyFriendJohn.zip 
Archive:  MyFriendJohn.zip
 extracting: use-rockyou.zip         
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ ls
MyFriendJohn.zip  use-rockyou.zip
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ unzip use-rockyou.zip                                            
Archive:  use-rockyou.zip
[use-rockyou.zip] custom-list.txt password:                                                                                     
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ zip2john use-rockyou.zip > zip1.hash                             
ver 2.0 efh 5455 efh 7875 use-rockyou.zip/custom-list.txt PKZIP Encr: TS_chk, cmplen=327, decmplen=536, crc=5DFDDFBE ts=8892 cs=8892 type=8
ver 1.0 efh 5455 efh 7875 ** 2b ** use-rockyou.zip/custom-list.zip PKZIP Encr: TS_chk, cmplen=454, decmplen=442, crc=9DFA0523 ts=89D9 cs=89d9 type=0
NOTE: It is assumed that all files in each archive have the same password.
If that is not the case, the hash may be uncrackable. To avoid this, use
option -o to pick a file at a time.
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ john --wordlist=/usr/share/wordlists/rockyou.txt zip1.hash       
Using default input encoding: UTF-8
Loaded 1 password hash (PKZIP [32/64])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
kdbs0429         (use-rockyou.zip)     
1g 0:00:00:01 DONE (2024-10-14 00:57) 0.7194g/s 4800Kp/s 4800Kc/s 4800KC/s kdeandray0..kccooper
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ unzip use-rockyou.zip 
Archive:  use-rockyou.zip
[use-rockyou.zip] custom-list.txt password: 
  inflating: custom-list.txt         
 extracting: custom-list.zip         
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ ls
MyFriendJohn.zip  custom-list.txt  custom-list.zip  use-rockyou.zip  zip1.hash
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ zip2john custom-list.zip > zip2.hash                      
ver 1.0 efh 5455 efh 7875 custom-list.zip/brute-force-pin.zip PKZIP Encr: 2b chk, TS_chk, cmplen=238, decmplen=226, crc=445F3191 ts=8914 cs=8914 type=0
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ john --wordlist=custom-list.txt zip2.hash                 
Using default input encoding: UTF-8
Loaded 1 password hash (PKZIP [32/64])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
1N73rD3N0M1N4710N41 (custom-list.zip/brute-force-pin.zip)     
1g 0:00:00:00 DONE (2024-10-14 00:59) 33.33g/s 1700p/s 1700c/s 1700C/s P1351054Ur
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ unzip custom-list.zip
Archive:  custom-list.zip
[custom-list.zip] brute-force-pin.zip password: 
 extracting: brute-force-pin.zip     
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ ls
MyFriendJohn.zip     custom-list.txt  use-rockyou.zip  zip2.hash
brute-force-pin.zip  custom-list.zip  zip1.hash
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ zip2john brute-force-pin.zip > zip3.hash                         
ver 1.0 efh 5455 efh 7875 brute-force-pin.zip/flag.txt PKZIP Encr: 2b chk, TS_chk, cmplen=44, decmplen=32, crc=148DA515 ts=86D2 cs=86d2 type=0
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ john --incremental=Digits --min-length=4 --max-length=6 zip3.hash
Using default input encoding: UTF-8
Loaded 1 password hash (PKZIP [32/64])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
991337           (brute-force-pin.zip/flag.txt)     
1g 0:00:00:00 DONE (2024-10-14 01:01) 7.692g/s 1512Kp/s 1512Kc/s 1512KC/s 35247..998657
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ unzip brute-force-pin.zip 
Archive:  brute-force-pin.zip
[brute-force-pin.zip] flag.txt password: 
 extracting: flag.txt                
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ ls
MyFriendJohn.zip     custom-list.txt  flag.txt         zip1.hash  zip3.hash
brute-force-pin.zip  custom-list.zip  use-rockyou.zip  zip2.hash
                                                                                    
┌──(anirban㉿kali)-[~/Downloads/My Friend John]
└─$ cat flag.txt    
CTFlearn{s0_n0W_y0uv3_M3t_J0hN}
