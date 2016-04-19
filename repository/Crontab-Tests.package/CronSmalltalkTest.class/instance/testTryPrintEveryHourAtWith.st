tests-frequency-printing
testTryPrintEveryHourAtWith
	visitor tryPrintEveryHourAtWith: (CronFrequency new minutes: 15; yourself).
	self assert: visitor stream contents equals: 'everyHourAt: 15'.