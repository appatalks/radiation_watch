# radiation_watch
Alarm if Extreme Radiation is Detected | Grater Than 54 mR/h


Dependencies: cron (cronie);

Install Instructions:

Install script to $PATH (Example: /usr/local/sbin)
Ensure execute bit is enabled: $ chmod +x /path/to/radiation_watch.sh
Add to crontab $ echo "@reboot /path/to/radiation_watch.sh | tee /home/myuser/radiation_watch.log" >> /var/spool/cron/myuser
You can verify it is working by viewing the log: $ tail -f /home/myuser/radiation_watch.log

*** BONUS Points to Impress your Girlfriend *** Get a Notification via Amazon SNS:

Create a Lambda Function using radiation_watch-lambda.py; Add Permissions for SNS and S3
Create Destination S3 Bucket for Code Run
Add SNS Topic and EventBridge Trigger -- I have mine using carrier's Email to SMS Gateway to keep everything free 5555555555@mycarrier.com
https://www.digitaltrends.com/mobile/how-to-send-a-text-from-your-email-account/

Bitcoin Donation: 16CowvxvLSR4BPEP9KJZiR622UU7hGEce5

Ethereum Donation: 0xf75278bd6e2006e6ef4847c9a9293e509ab815c5
