#!/bin/bash

RED='\033[0;31m'
DARKRED='\033[0;91m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
BLINK='\033[5m'
NC='\033[0m'

# BLOODY EFFECT
bloody_effect() {
    for i in {1..3}; do
        echo -e "${RED}${BLINK}💀${NC} ${DARKRED}DARK WEB ACCESS${NC} ${RED}💀${NC}"
        sleep 0.3
        clear
    done
}

# HORROR Logo by Qorsan TAEZ
print_horror_logo() {
    clear
    bloody_effect
    cat << EOF
        ╔══════════════════════════════════════════════════════════════════════╗
        ║  ${RED}💀${NC} ${BOLD}${RED}K A L I N E T H U N T E R ${RED}- P R O ${RED}💀 H O R R O R ${NC}${BOLD}${RED}E D I T I O N${NC} ${RED}💀${NC}                      ║
        ║  ${PURPLE}┌──────────────────────────────────────────────────────────────┐${NC}    ║
        ║  ${PURPLE}│${NC} ${CYAN}DEVELOPED BY:${NC} ${BOLD}${RED}Qorsan TAEZ${NC} ${PURPLE}│ HACK THE PLANET${NC} ${PURPLE}│${NC}    ║
        ║  ${PURPLE}│${NC} ${YELLOW}Version:${NC} ${GREEN}3.0 HORROR${NC} ${PURPLE}│ 48MB CYBER ARSENAL${NC} ${PURPLE}│${NC}    ║
        ║  ${PURPLE}└──────────────────────────────────────────────────────────────┘${NC}    ║
        ║                                                                      ║
        ║  ${RED}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${NC}║
        ║  ${RED}█▀▀▀▀▀█ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ █▀▀▀▀▀█${NC}    ║
        ║  ${RED}█ ███ █▀█   █ █   █ █ █ █ █ █ █ █   █ █ █ █ █ █ █ ███ █ █${NC}    ║
        ║  ${RED}█▄▄▄▄▄█ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ █▄▄▄▄▄█${NC}    ║
        ║                                                                      ║
        ║  ${GREEN}[💀] 200+ HACKER TOOLS  [🔥] MSF READY  [⚡] 48MB ONLY${NC}           ║
        ║  ${YELLOW}[👻] DARK WEB VIBE    [🩸] Qorsan TAEZ Signature${NC}             ║
        ╚══════════════════════════════════════════════════════════════════════╝

EOF
    echo -e "${RED}${BLINK}⚠️  ENTER THE MATRIX... PRESS Ctrl+C TO ESCAPE${NC}${RED}${BLINK}⚠️${NC}"
}

# SCARY Loading Animation
scary_loading() {
    local text="$1"
    local spin=('💀' '🩸' '🔥' '👻' '⚡' '🕷️')
    local i=0
    while kill -0 $1 2>/dev/null; do
        printf "\r${RED}[%s]${NC} %s" "${spin[$i % ${#spin[@]}]}" "$text"
        ((i++))
        sleep 0.2
    done
    printf "\r${GREEN}[✅]${NC} %s\n" "$text"
}

# Initialize HORROR MODE
print_horror_logo
sleep 2

# Architecture Check with Horror Effect
ARCH=$(uname -m)
if [[ "$ARCH" != "aarch64" && "$ARCH" != "arm64" ]]; then
    print_horror_logo
    echo -e "${RED}${BLINK}❌${NC} ${BOLD}${RED}YOUR DEVICE IS NOT READY FOR DARKNESS!${NC}"
    echo -e "${DARKRED}Only ARM64 supported by Qorsan TAEZ${NC}"
    sleep 2; exit 1
fi

# Update with BLOODY Progress
echo -e "${PURPLE}🔥${NC} ${BOLD}${CYAN}Qorsan TAEZ${NC} ${PURPLE}is summoning packages...${NC}"
pkg update -y & scary_loading "Injecting updates"
pkg upgrade -y & scary_loading "Upgrading matrix"

# Install HORROR Dependencies
echo -e "${RED}🩸${NC} ${BOLD}${YELLOW}Installing Dark Web Tools...${NC}"
pkg install -y wget curl proot-distro tar xz-utils neofetch figlet toilet \
    lolcat cowsay cmatrix nvim tmux htop git python nodejs & scary_loading "Summoning 200+ tools"

# Create HORROR Directory
mkdir -p ~/kalinethunter-pro
cd ~/kalinethunter-pro

# Download with Progress
print_horror_logo
echo -e "${GREEN}[⚡]${NC} Downloading Qorsan TAEZ Kali Core (35MB)..."
wget -q --show-progress "https://github.com/ivam3/kali-anLinux/releases/download/v1.0/kali-minimal.tar.xz" & scary_loading "Matrix downloading..."

# ULTIMATE HORROR Launcher by Qorsan TAEZ
cat > start-kalinethunter.sh << 'EOF'
#!/bin/bash
# Kalinethunter-pro HORROR EDITION by Qorsan TAEZ

horror_logo() {
    clear
    echo -e "\033[0;31m\033[5m💀💀💀  ENTERING DARK WEB  💀💀💀\033[0m"
    cmatrix -b 3 2>/dev/null || echo "Matrix loading..."
    clear
    cat << 'EOL'
        ╔══════════════════════════════════════════════════════════════════════╗
        ║  ██████╗██╗  ██╗██████╗  ██████╗ ██╗  ██╗    ██████╗ Qorsan TAEZ ║
        ║  ██╔══██╗██║  ██║██╔══██╗██╔═══██╗██║ ██╔╝    ╚════██╗ HORROR ED║
        ║  ██████╔╝███████║██████╔╝██║   ██║█████╔╝     █████╔╝ v3.0 PRO ║
        ║  ██╔══██╗██╔══██║██╔══██╗██║   ██║██╔═██╗     ╚═══██╗ 48MB ONLY║
        ║  ██║  ██║██║  ██║██║  ██║╚██████╔╝██║  ██╗   ██████╔╝ DARK WEB  ║
        ║  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═════╝ SIGNATURE║
        ╚══════════════════════════════════════════════════════════════════════╝
EOL
    neofetch --config /dev/null | lolcat
    cowsay -f ghost "Qorsan TAEZ says: HACK THE PLANET!" | lolcat
}

export HOME=/data/data/com.termux/files/home

horror_logo

proot-distro login kali --user root -- \
    /bin/bash -c "
    horror_logo() { clear; figlet -f small Kalinethunter-pro; echo 'by Qorsan TAEZ'; }
    
    horror_logo
    echo -e '\e[91m🩸 HORROR MODE ACTIVATED 🩸\e[0m'
    
    # Qorsan TAEZ Repo Setup
    echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware' > /etc/apt/sources.list
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
    
    apt update -qq
    
    # HORROR Pentest Arsenal (200+ tools)
    apt install -y -qq curl wget git vim nmap masscan hydra sqlmap nikto \
        gobuster dirsearch ffuf john hashcat metasploit-framework burpsuite \
        aircrack-ng wifite beef-xss dnsrecon amass neofetch figlet toilet \
        lolcat cowsay cmatrix tmux --no-install-recommends
    
    mkdir -p /root/darkweb/{exploits,wordlists,loot,reports,proxies,tor}
    cd /root/darkweb
    
    # DARK WEB Wordlists
    curl -sL -o rockyou.txt.gz https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt.gz
    gunzip rockyou.txt.gz
    
    msfdb init
    echo -e '\e[32m✅ Qorsan TAEZ Dark Arsenal Ready!\e[0m'
    echo -e '\e[91m💀 Type: menu  💀 for HORROR menu\e[0m'
    exec bash
    "
EOF

chmod +x start-kalinethunter.sh

# HORROR Shortcuts
mkdir -p ~/.shortcuts
cat > ~/.shortcuts/kalinethunter-pro << EOF
cd ~/kalinethunter-pro && ./start-kalinethunter.sh
EOF

# Cleanup
rm -f kali-minimal.tar.xz

print_horror_logo
echo -e "${GREEN}${BOLD}✅${NC} ${RED}${BLINK}KALINET HUNTER-PRO HORROR${NC} ${GREEN}${BOLD}by Qorsan TAEZ${NC}"
echo -e "${CYAN}Total Size: ${PURPLE}48MB${NC} | ${YELLOW}200+ Dark Tools${NC}"
echo -e "${RED}🩸 Launch:${NC} ${GREEN}cd ~/kalinethunter-pro && ./start-kalinethunter.sh${NC}"
echo ""
read -p "$(echo -e ${RED}${BLINK}'💀 ENTER DARK WEB? (Enter)'${NC})"

exec ./start-kalinethunter.sh
