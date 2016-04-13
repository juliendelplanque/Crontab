output
log
	| out |
	out := CronLog new.
	self output: out.
	^ out