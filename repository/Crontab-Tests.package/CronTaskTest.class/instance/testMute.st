tests-output
testMute
	cronTask mute.
	self assert: cronTask output class equals: CronMute