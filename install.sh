#!/bin/bash

frase="coded by exilado"

logo=(
"  \e[32m_ \e[0m\e[35m_ \e[0m\e[95m_ \e[0m\e[32m_ \e[0m\e[35m_ \e[0m\e[95m_ \e[0m\e[32m_ \e[0m\e[35m_ \e[0m\e[95m_ \e[0m\e[32m_ \e[0m\e[35m_ \e[0m\e[95m_ \e[0m\e[32m_ \e[0m\e[35m_ \e[0m\e[95m> \e[0m"
"||  |||  ||| \e[32mE \e[0m\e[35mX \e[0m\e[95mI \e[0m\e[32mL \e[0m\e[35mI \e[0m\e[95mO \e[0m \e[32m|||  |||"
"||__|||__||| \e[32m* \e[0m\e[35m* \e[0m\e[95m* \e[0m\e[32m* \e[0m\e[35m* \e[0m\e[95m* \e[0m \e[32m|||__|||"
)

for ((i = 0; i < ${#frase}; i++)); do
    echo -n -e "\e[35m${frase:$i:1}\e[0m"
    sleep 0.4
done

echo -e "\n"

for ((frame = 0; frame < ${#logo[@]}; frame++)); do
    echo -e "${logo[$frame]}"
    sleep 0.7
done

echo "__________......................................................................................."

printf "Pressione Enter para continuar..."

Metasploit() {
    sudo apt install snap && sudo snap install metasploit-framework
}
sqlmap() {
    sudo apt-get install -y sqlmap
}
wireshark() {
    sudo apt-get install -y wireshark
}
john() {
    sudo apt-get install -y john
}
hydra() {
    sudo apt-get install -y hydra
}
aircrack() {
    sudo apt-get install -y aircrack-ng
}
openvas() {
    sudo apt-get install -y openvas
}
dirb() {
    sudo apt-get install -y dirb
}
gobuster() {
    sudo apt-get install -y gobuster
}
hashcat() {
    sudo apt-get install -y hashcat
}
tcpdump() {
    sudo apt-get install -y tcpdump
}
snort() {
    sudo apt-get install -y snort
}
ossec() {
    sudo apt-get install -y ossec-hids-server ossec-hids-agent
}
fail2ban() {
    sudo apt-get install -y fail2ban
}
lynis() {
    sudo apt-get install -y lynis
}
nmap() {
    sudo apt-get install -y nmap
}

setoolkit() {
    # Install Python 3
    sudo apt-get install -y python3-pip
    # Install setoolkit
    git clone https://github.com/trustedsec/social-engineer-toolkit/ setoolkit/
    cd setoolkit
    pip3 install -r requirements.txt
    python3 setup.py
}

echo "
1. Metasploit
2. sqlmap
3. wireshark
4. john
5. hydra
6. aircrack
7. openvas
8. dirb
9. gobuster
10. hashcat
11. tcpdump
12. snort
13. ossec
14. fail2ban
15. lynis
16. nmap
17. setoolkit
18. exit"

read -p "O que você quer instalar meu contemporâneo: " tool

case $tool in
1)
    Metasploit
    ;;
2)
    sqlmap
    ;;
3)
    wireshark
    ;;
4)
    john
    ;;
5)
    hydra
    ;;
6)
    aircrack
    ;;
7)
    openvas
    ;;
8)
    dirb
    ;;
9)
    gobuster
    ;;
10)
    hashcat
    ;;
11)
    tcpdump
    ;;
12)
    snort
    ;;
13)
    ossec
    ;;
14)
    fail2ban
    ;;
15)
    lynis
    ;;
16)
    nmap
    ;;
17)
    setoolkit
    ;;
18)
    echo "Exiting"
    ;;
*)
    echo "Opção inválida"
    ;;
esac
