┌──(anirban㉿kali)-[~]
└─$ curl http://165.227.106.113/header.php 
Sorry, it seems as if your user agent is not correct, in order to access this website. The one you supplied is: curl/8.10.1
<!-- Sup3rS3cr3tAg3nt  -->
                                                                                     
┌──(anirban㉿kali)-[~]
└─$ curl -H "User-Agent: Sup3rS3cr3tAg3nt" http://165.227.106.113/header.php
Sorry, it seems as if you did not just come from the site, "awesomesauce.com".
<!-- Sup3rS3cr3tAg3nt  -->
                                                                                     
┌──(anirban㉿kali)-[~]
└─$ curl -e "awesomesauce.com" -H "User-Agent: Sup3rS3cr3tAg3nt" http://165.227.106.113/header.php
Here is your flag: flag{did_this_m3ss_with_y0ur_h34d}
<!-- Sup3rS3cr3tAg3nt  -->
