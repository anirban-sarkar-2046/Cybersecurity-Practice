┌──(anirban㉿kali)-[~]
└─$ curl -s https://jupiter.challenges.picoctf.org/problem/17682/ | grep substring | sed "s/') {/\n/g" | sed "s/[[:space:]]*if (checkpass.substring(\(split\*\|\)//g" | sort -n | awk '{ printf $4 }' | tr -d "'" && echo
picoCTF{no_clients_plz_b706c5}
