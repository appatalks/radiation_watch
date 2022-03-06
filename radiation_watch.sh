#!/bin/bash

# radiation_watch.sh - Monitors a web page for changes
curl -s https://radnet.epa.gov/cdx-radnet-rest/api/rest/csv/2022/fixed/TX/SAN%20ANTONIO | tail -n1 | awk '{print $4}' | cut -d , -f2 | cut -d . -f1 > /var/www/vhosts/hoshisato.com/public_html/radiation_watch.txt

value=$(cat /var/www/vhosts/example.com/public_html/radiation_watch.txt)

echo $value

while true; do
 if (( $value > 54));
 then
        echo "Alert * Alert * Alert * Radiation Detected * Take Action Now" > /var/www/vhosts/example.com/public_html/radiation_detected.txt
        echo "Alert * Alert * Alert * Radiation Detected * Take Action Now"
 else
        echo "Status: Radiation Watch Clear" > /var/www/vhosts/example.com/public_html/radiation_detected.txt
        date
        echo "Status: Radiation Watch Clear" 
        sleep 1800
        clear
fi
done
