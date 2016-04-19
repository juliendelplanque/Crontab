tests-frequency-printing
testTryPrintEveryHourWith
	visitor tryPrintEveryHourWith: (CronFrequency new minutes: 0; yourself).
	self assert: visitor stream contents equals: 'everyHour'