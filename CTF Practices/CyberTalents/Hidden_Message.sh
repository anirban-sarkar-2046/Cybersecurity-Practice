anirban@LAPTOP-LL4QBUQF:~$ wget https://hubchallenges.s3.eu-west-1.amazonaws.com/h_m.jpg
--2024-09-25 14:15:40--  https://hubchallenges.s3.eu-west-1.amazonaws.com/h_m.jpg
Resolving hubchallenges.s3.eu-west-1.amazonaws.com (hubchallenges.s3.eu-west-1.amazonaws.com)... 52.92.3.154, 3.5.66.144, 3.5.65.198, ...
Connecting to hubchallenges.s3.eu-west-1.amazonaws.com (hubchallenges.s3.eu-west-1.amazonaws.com)|52.92.3.154|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 63516 (62K) [image/jpeg]
Saving to: ‘h_m.jpg’

h_m.jpg                       100%[=================================================>]  62.03K   153KB/s    in 0.4s

2024-09-25 14:15:41 (153 KB/s) - ‘h_m.jpg’ saved [63516/63516]

anirban@LAPTOP-LL4QBUQF:~$ file h_m.jpg
h_m.jpg: JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=5, xresolution=74, yresolution=82, resolutionunit=2], baseline, precision 8, 955x384, components 3
anirban@LAPTOP-LL4QBUQF:~$ strings h_m.jpg | awk 'length($0)>=32'
b1a1f2855d2428930e0c9c4ce10500d5
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz
&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz
