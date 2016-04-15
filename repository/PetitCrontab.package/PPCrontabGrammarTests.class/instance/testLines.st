tests
testLines
	self parse: '# My crontab
# Here is an example of what you can do with the crontab DSL in Pharo.

# Backup everything.
# ------------------
0 * * * * /usr/bin/backup

# Run a speed test.
# -----------------
0 12 * * * /usr/bin/speedtest --simple

# Check if connected to the internet.
# -----------------------------------
0 12 15-17 1,2 * /usr/bin/ping -c 5 www.google.com > /var/log/ping.log

# Compute things.
# ---------------
0 12 15-17 * * /usr/bin/compute_things> /dev/null 2>&1

# Update things.
# --------------
0 11 * * 0,1,3 /usr/bin/update_things  | tee /var/log/update.log  | mail -s ''[Cron]Update is done'' admin@hello.org
' rule: #lines