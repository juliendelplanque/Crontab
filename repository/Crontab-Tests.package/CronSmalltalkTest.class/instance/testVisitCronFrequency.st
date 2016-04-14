tests-as yet unclassified
testVisitCronFrequency
	self
		assert: ((CronFrequency new
						minutes: 30;
						hours: CronAlways new;
						days: (15 to: 18);
						months: #(2 3);
						daysOfWeek: CronAlways new) accept: visitor)
		equals: 'minutes: 30 hours: $* days: (15 to: 18) months: #(2 3) daysOfWeek: $*'