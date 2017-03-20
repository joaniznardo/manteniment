#!/bin/bash
## wget -q --no-check-certificate https://raw.githubusercontent.com/joaniznardo/manteniment/master/genera_hosts.sh -O - | bash -

## genera el fitxer de host per a ansible en llocs on (sic) no tenim assignació fixa d'ips
## importa la nomenclatura de la interficie i les macs que interessen
sudo arp-scan -Nq --interface=enp2s0 --localnet |sed '1,2d' | sed '/^$/d' | sed '$d' | sed '$d' | sort -k2 | egrep "d8:cb|10:bf" | tee hosts20170228.csv | awk '{ print $1}' | tee ansible.hosts
echo '[aula20]' | tee aula20.hosts
cat ansible.hosts | tee -a aula20.hosts
