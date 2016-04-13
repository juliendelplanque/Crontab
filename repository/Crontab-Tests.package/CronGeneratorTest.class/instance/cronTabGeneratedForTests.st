helpers
cronTabGeneratedForTests
	^ '# My crontab
# Here is an example of what you can do with the crontab DSL in Pharo.

# Backup everything.
# ------------------
0 * * * * /usr/bin/backup

# Do a speed test.
# ----------------
0 12 * * * /usr/bin/speedtest --simple

# Check if connected to the internet.
# -----------------------------------
0 12 15-17 1,2 * /usr/bin/ping

# Compute things.
# ---------------
0 12 15-17 * * /usr/bin/compute_things

# Update things.
# --------------
0 11 * * 0,1,3 /usr/bin/update_things
30 15 * * 0,1,3 /usr/bin/update_things
5 23 * * 0,1,3 /usr/bin/update_things
'