sudo arp-scan -Nq --interface=enp2s0 --localnet |sed '1,2d' | sed '/^$/d' | sed '$d' | sed '$d' | sort -k2 | egrep "d8:cb|10:bf" | tee hosts20170228.csv | awk '{ print $1}' | tee ansible.hosts
echo '[aula20]' | tee aula20.hosts
cat ansible.hosts | tee -a aula20.hosts
