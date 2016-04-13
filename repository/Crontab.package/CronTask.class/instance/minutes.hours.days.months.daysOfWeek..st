frequency
minutes: minutes hours: hours days: days months: months daysOfWeek: daysOfWeek
	"Create a frequency in a low-level way.
	 Each parameter can be:
		- A $*.
		- An integer.
		- An interval of integer.
		- An array of integer/interval of integer.
	 You should try to use one of the other message except if you can not express what
	 you need with them."
	self frequency: (CronFrequency new
							minutes: (minutes ifStar: [ CronAlways new ]);
							hours: (hours ifStar: [ CronAlways new ]);
							days: (days ifStar: [ CronAlways new ]);
							months: (months ifStar: [ CronAlways new ]);
							daysOfWeek: (daysOfWeek ifStar: [ CronAlways new ]);
							yourself)