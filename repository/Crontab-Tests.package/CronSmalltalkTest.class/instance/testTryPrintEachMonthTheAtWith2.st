tests-frequency-printing
testTryPrintEachMonthTheAtWith2
	visitor tryPrintEachMonthTheAtWith: (CronFrequency new months: #(1 2); days: 15; minutes: 3; hours: 5; yourself).
	self assert: visitor stream contents equals: 'eachMonth: #(''January'' ''February'') the: 15 at: ''5:03'' asTime'