tests-frequency-printing
testTryPrintEveryHourAtWith2
	visitor tryPrintEveryHourAtWith: (CronFrequency new minutes: #(15 30 45); yourself).
	self assert: visitor stream contents equals: 'everyHourAt: #(15 30 45)'.