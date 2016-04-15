tests
testLine
	self parse: '0 * * * * /usr/bin/backup' rule: #line.
	self parse: '0 12 15-17 1,2 * /usr/bin/ping -c 5 www.google.com > /var/log/ping.log' rule: #line.
	self parse: '0 12 15-17 * * /usr/bin/compute_things> /dev/null 2>&1' rule: #line.
	self parse: '0 11 * * 0,1,3 /usr/bin/update_things  | tee /var/log/update.log  | mail -s ''[Cron]Update is done'' admin@hello.org' rule: #line.