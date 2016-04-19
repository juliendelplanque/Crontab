tests-frequency-printing
testTryPrintEveryDayAtWith
	visitor tryPrintEveryDayAtWith: (CronFrequency new minutes: 3; hours: 5; yourself).
	self assert: visitor stream contents equals: 'everyDayAt: ''5:03'' asTime'