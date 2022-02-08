##### Author : Saikiran M #####

#!/bin/bash

while read -p "Domain :: " site; do
    echo -n "certificate expires on : "
    echo | openssl s_client -servername $site -connect $site:443 2>/dev/null | openssl x509 -noout -enddate | cut -d '=' -f2
done
