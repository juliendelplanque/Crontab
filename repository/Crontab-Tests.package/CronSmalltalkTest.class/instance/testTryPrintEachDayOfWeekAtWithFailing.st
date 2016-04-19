tests-frequency-printing
testTryPrintEachDayOfWeekAtWithFailing
	self
		should: [ visitor
						tryPrintEachDayOfWeekAtWith: (CronFrequency new daysOfWeek: #(0 1 3); minutes: 0; yourself) ]
		raise: CronNotPrintableUsingThisFormat