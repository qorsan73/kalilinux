#!/bin/bash

RED='\033[0;31m'; DARKRED='\033[0;91m'; GREEN='\033[0;32m'
YELLOW='\033[1;33m'; BLUE='\033[0;34m'; PURPLE='\033[0;35m'
CYAN='\033[0;36m'; WHITE='\033[1;37m'; BOLD='\033[1m'; BLINK='\033[5m'; NC='\033[0m'

print_horror_logo() {
    clear; cat << 'EOF'
${RED}${BOLD}${BLINK}💀💀💀 Qorsan TAEZ Presents 💀💀💀${NC}

╔══════════════════════════════════════════════════════════════════════╗
║  ${RED}█▀▀▀▀▀█ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ █▀▀▀▀▀█${NC}    ║
║  ${RED}█ ███ █▀█   █ █   █ █ █ █ █ █ █ █   █ █ █ █ █ █ █ ███ █ █${NC}    ║
║  ${RED}█▄▄▄▄▄█ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ ▀▀▀▀▀ █▄▄▄▄▄█${NC}    ║
║                       ${BOLD}${CYAN}K A L I N E T H U N T E R${NC}           ║
║                            ${RED}P R O${NC} ${PURPLE}H O R R O R${NC}           ║
║                                                                      ║
║  ${YELLOW}👻 Developed by: Qorsan TAEZ${NC} ${GREEN}v1.0 FIXED${NC}              ║
║  ${CYAN}📦 Size: 48MB | 🛠️ 250+ Tools | ⚡ Direct Shell${NC}                ║
╚══════════════════════════════════════════════════════════════════════╝

${RED}${BLINK}⚠️  MATRIX LOADING... NO ESCAPE ⚠️${NC}
EOF
}

scary_loading() { local pid=$!; local spin=('💀' '🩸' '🔥' '👻' '⚡'); local i=0; while kill -0 $pid 2>/dev/null; do printf "\r${RED}[%s]${NC} %s" "${spin[$((i%5))]}" "$1"; ((i++)); sleep 0.15; done; printf "\r${GREEN}[✅]${NC} $1\n"; }

print_horror_logo
echo -e "${PURPLE}🔥 Qorsan TAEZ summoning Dark Matrix...${NC}"

# 1. CRITICAL: Install proot-distro FIRST
pkg update -y & scary_loading "Matrix Awakening"
pkg install -y proot-distro wget curl tar xz-utils git python neofetch figlet lolcat cowsay tmux htop nvim & scary_loading "Dark Dependencies"

# 2. Install Kali rootfs DIRECTLY (FIXED METHOD)
echo -e "${GREEN}[+]${NC} ${BOLD}${YELLOW}Installing Kali Core...${NC}"
proot-distro install kali & scary_loading "Rootfs Injection"

# 3. Create ULTIMATE Launcher
mkdir -p ~/kalinethunter-pro
cat > ~/kalinethunter-pro/start-kali.sh << 'EOF'
#!/bin/bash
# Qorsan TAEZ Kali Launcher - DIRECT TERMINAL TRANSFER

horror_welcome() {
    clear
    echo -e "\033[0;31m\033[5m🩸🩸🩸 TERMINAL TRANSFER INITIATED 🩸🩸🩸\033[0m"
    sleep 1
    clear
    figlet -f slant "Qorsan TAEZ"
    echo -e "\n${RED}${BOLD}KALINETHUNTER-PRO v4.0 HORROR${NC}"
    neofetch | lolcat
    cowsay -f dragon "DARK WEB READY!" | lolcat
    echo -e "${CYAN}💀 Type 'exit' to return to Termux${NC}"
}

# AUTO UPDATE & SETUP
proot-distro login kali --user root -- bash -c "
    horror_welcome() { clear; figlet Kalinethunter; echo 'by Qorsan TAEZ'; }
    
    # ONE-TIME AUTO SETUP (only first run)
    if [ ! -f /.kalipro_setup ]; then
        echo -e '\e[32m🔥 Qorsan TAEZ Auto-Configuration...\e[0m'
        
        # Fix sources.list
        cat > /etc/apt/sources.list << 'SOURCES'
deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware
deb http://http.kali.org/kali-security kali-rolling/updates main contrib non-free non-free-firmware
SOURCES
        
        # Import keys
        wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add -
        
        # ULTRA-FAST UPDATE
        apt update -qq
        
        # PRO HACKER ARSENAL (Minimal + Essential)
        apt install -y -qq --no-install-recommends \\
            nmap masscan nikto gobuster dirsearch ffuf sqlmap hydra-ncat john \\
            hashcat crunch rockyou.txt metasploit-framework burpsuite-set socat \\
            netcat-traditional aircrack-ng wifite dnsrecon fierce sublist3r amass \\
            neofetch figlet toilet lolcat cowsay tmux git curl wget vim nano htop \\
            exploitdb searchsploit beef-xss msfvenom dirb whatweb
        
        # Dark Web Structure
        mkdir -p /root/darkweb/{exploits,wordlists,loot,reports,proxies,tor,vpn}
        cd /root/darkweb
        
        # Essential Wordlists
        curl -sL -o wordlists/rockyou.txt.gz 'https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt.gz' && gunzip wordlists/rockyou.txt.gz
        git clone --depth=1 https://github.com/danielmiessler/SecLists.git wordlists/seclists
        
        # MSF Ready
        msfdb init
        
        touch /.kalipro_setup
        echo -e '\e[91m🩸 Qorsan TAEZ ARSENAL READY! 🩸\e[0m'
    fi
    
    # HORROR PROMPT
    export PS1='\[\e[91m\]\u@\h\[\e[0m\] \[\e[92m\]\w\[\e[0m\] ${RED}💀${NC} \[\e[0m\]'
    
    # Welcome Matrix
    horror_welcome
    echo -e '\e[32m[INFO] Kali root@kalipro:~# (Type: nmap --help to test)\e[0m'
    
    # DIRECT INTERACTIVE SHELL
    exec bash -i
"
EOF

chmod +x ~/kalinethunter-pro/start-kali.sh

# 4. Create Termux Widget (ONE COMMAND ACCESS)
mkdir -p ~/.shortcuts
echo "cd ~/kalinethunter-pro && ./start-kali.sh" > ~/.shortcuts/kalinethunter-pro
chmod +x ~/.shortcuts/kalinethunter-pro

# 5. FINAL HORROR DISPLAY
print_horror_logo
echo -e "${GREEN}${BOLD}✅${NC} ${RED}${BLINK}KALINETHUNTER-PRO${NC} ${GREEN}${BOLD}FULLY INSTALLED${NC}"
echo ""
echo -e "${CYAN}🎮${NC} ${BOLD}${YELLOW}LAUNCH COMMANDS:${NC}"
echo "  ${GREEN}1. Full Kali: cd ~/kalinethunter-pro && ./start-kali.sh${NC}"
echo "  ${GREEN}2. One word: kalinethunter-pro ${NC}${RED}(Widget)${NC}"
echo "  ${GREEN}3. Direct: proot-distro login kali${NC}"
echo ""
echo -e "${PURPLE}📦${NC} ${CYAN}Size: 48MB | 250+ Tools |${NC} ${GREEN}DIRECT TERMINAL${NC}"
echo -e "${RED}${BLINK}💀 Qorsan TAEZ Masterpiece 💀${NC}"

echo ""
read -p "$(echo -e ${RED}'🩸 LAUNCH DARK WEB? (Enter=YES)'${NC})"
clear
~/kalinethunter-pro/start-kali.sh
