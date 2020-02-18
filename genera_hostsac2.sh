INTERFICIE=$(ip -o -4 a | grep "2:" | head -1 | awk '{print $2}')
FITXER_HOSTS=hosts.ac2
echo "[aulaac2]" | tee $FITXER_HOSTS
sudo arp-scan -Nq --interface=$INTERFICIE --localnet |sed '1,2d' | sed '/^$/d' | sed '$d' | sed '$d' | sort -k2  | grep -f got_macs.txt | tee get_ips.txt | awk '{print $1}' | tee -a $FITXER_HOSTS
