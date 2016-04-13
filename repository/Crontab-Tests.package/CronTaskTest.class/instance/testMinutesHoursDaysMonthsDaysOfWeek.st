tests-frequency
testMinutesHoursDaysMonthsDaysOfWeek
	cronTask
		minutes: #(0 15 30 45) hours: (15 to: 17) days: 15 months: $* daysOfWeek: $*.
	self assert: cronTask frequency minutes equals: #(0 15 30 45).
	self assert: cronTask frequency hours equals: (15 to: 17).
	self assert: cronTask frequency days equals: 15.
	self assert: cronTask frequency months isCronAlways.
	self assert: cronTask frequency daysOfWeek isCronAlways.