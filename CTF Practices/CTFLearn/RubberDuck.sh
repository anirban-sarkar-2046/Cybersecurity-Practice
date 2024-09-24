anirban@LAPTOP-LL4QBUQF:~$ file RubberDuck.jpg
RubberDuck.jpg: JPEG image data, JFIF standard 1.01, aspect ratio, density 72x72, segment length 16, comment: "CTFlearn{ILoveJakarta}", progressive, precision 8, 1536x2048, components 3
anirban@LAPTOP-LL4QBUQF:~$ strings RubberDuck.jpg | head
JFIF
CTFlearn{ILoveJakarta}
4ICC_PROFILE
$appl
mntrRGB XYZ
 acspAPPL
APPL
-appl
desc
ecprt
anirban@LAPTOP-LL4QBUQF:~$ exiftool RubberDuck.jpg | grep Comment
Comment                         : CTFlearn{ILoveJakarta}.
