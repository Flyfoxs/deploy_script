
cur_ip=$(nslookup osmart.f3322.net | grep Address: | tail -1 | cut -d ' '  -f 2)
echo $cur_ip

check_exist=$(grep -c ${cur_ip} /etc/hosts )

echo ======  $check_exist
if [[ $(grep -c ${cur_ip} /etc/hosts) -gt 0 ]]
then
	echo Already has ip ${cur_ip} in hosts
	exit 0
else
	if [[ ! -z "$cur_ip" ]]; then
	
		echo $cur_ip iiat, iiat42, iiat39, iiat98, iiat3, iiat5, iiat7
		sed -i '' '/iiat42/d' /etc/hosts
		echo $cur_ip iiat, iiat42, iiat39, iiat98, iiat3, iiat5, iiat7, $(date)  >> /etc/hosts

		#Keep history
		echo $(date) $cur_ip >> /etc/hosts
	fi
fi
tail /etc/hosts
