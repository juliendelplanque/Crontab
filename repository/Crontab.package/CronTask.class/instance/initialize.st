initialization
initialize
	super initialize.
	self frequency: CronNilFrequency new.
	self comment: CronNilComment new.
	self output: CronLog new.
	subtasks := #()