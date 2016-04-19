tests-frequency-printing
testTryPrintEachDayOfWeekAtWith
	visitor tryPrintEachDayOfWeekAtWith: (CronFrequency new daysOfWeek: #(0 1 3); hours: 1; minutes: 0; yourself).
	self assert: visitor stream contents equals: 'eachDayOfWeek: #(''Sunday'' ''Monday'' ''Wednesday'') at: ''1:00'' asTime'