wsl --user root --exec service ssh restart
wsl --user root --exec netsh.exe interface portproxy delete v4tov4 listenport=22
$ip = wsl --exec bash -c "ip address show eth0 | sed -ne 's/^ *inet \([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\/.*$/\1/p'"
wsl --user root --exec netsh.exe interface portproxy add v4tov4 listenport=22 connectport=22 listenaddress=localhost connectaddress=$ip
wsl --user root --exec sc.exe config iphlpsvc start=auto
wsl --user root --exec sc.exe start iphlpsvc
