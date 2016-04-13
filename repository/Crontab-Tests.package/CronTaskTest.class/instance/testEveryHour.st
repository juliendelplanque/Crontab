tests-frequency
testEveryHour
	cronTask everyHour.
	self assert: cronTask frequency minutes equals: 0.
	self assert: cronTask frequency hours isCronAlways.
	self assert: cronTask frequency days isCronAlways.
	self assert: cronTask frequency months isCronAlways.
	self assert: cronTask frequency daysOfWeek isCronAlways