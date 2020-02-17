INTERFICIE=$(ip -o -4 a | grep "2:" | head -1 | awk '{print $2}')
sudo arp-scan -Nq --interface=$INTERFICIE --localnet |sed '1,2d' | sed '/^$/d' | sed '$d' | sed '$d' | sort -k2  | grep -f got_macs.txt | tee get_ips.txt
