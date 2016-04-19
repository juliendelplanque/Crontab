tests-frequency-printing
testTryPrintEachMonthTheAtWith
	visitor tryPrintEachMonthTheAtWith: (CronFrequency new days: 15; minutes: 3; hours: 5; yourself).
	self assert: visitor stream contents equals: 'eachMonthThe: 15 at: ''5:03'' asTime'