sed -i '' '/iiat42/d' /etc/hosts

cur_ip=$(nslookup osmart.f3322.net | grep Address: | tail -1 | cut -d ' '  -f 2)
echo $cur_ip


echo $cur_ip iiat, iiat42, iiat39, iiat98, iiat3, iiat5, iiat7  >> /etc/hosts

tail /etc/hosts
