tests-frequency
testEveryHourAt
	cronTask everyHourAt: 15.
	self assert: cronTask frequency minutes equals: 15.
	self assert: cronTask frequency hours isCronAlways.
	self assert: cronTask frequency days isCronAlways.
	self assert: cronTask frequency months isCronAlways.
	self assert: cronTask frequency daysOfWeek isCronAlways