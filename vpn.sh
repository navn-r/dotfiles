#! /usr/bin/zsh
x=$(systemctl is-active --quiet openvpn-client@tsvpn.service && echo 1 || echo 0)
if [ $x -eq 1 ]; then 
  echo $1 | sudo -S -k systemctl stop openvpn-client@tsvpn.service && echo "\nVPN is now DEAD"
else
  echo $1 | sudo -S -k systemctl start openvpn-client@tsvpn.service && echo "\nVPN is now ACTIVE"
fi

# /home/navinn/Code/vpn.sh ravindarran6543