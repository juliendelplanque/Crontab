output
mute
	| out |
	out := CronMute new.
	self output: out.
	^ out