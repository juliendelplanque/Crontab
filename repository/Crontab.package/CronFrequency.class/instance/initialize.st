initialization
initialize
	super initialize.
	self minutes: CronAlways new.
	self hours: CronAlways new.
	self days: CronAlways new.
	self months: CronAlways new.
	self daysOfWeek: CronAlways new