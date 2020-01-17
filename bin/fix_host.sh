
cur_ip=$(nslookup osmart.f3322.net | grep Address: | tail -1 | cut -d ' '  -f 2)
echo $cur_ip



if [[ ! -z "$cur_ip" ]]; then
	
	echo $cur_ip iiat, iiat42, iiat39, iiat98, iiat3, iiat5, iiat7
	sed -i '' '/iiat42/d' /etc/hosts
	echo $cur_ip iiat, iiat42, iiat39, iiat98, iiat3, iiat5, iiat7, $(date)  >> /etc/hosts
fi
tail /etc/hosts
