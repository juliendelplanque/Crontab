tests-frequency-printing
testTryPrintEveryHourAtWithFailing
	self
		should: [ visitor tryPrintEveryHourAtWith: (CronFrequency new hours: 1; yourself) ]
		raise: CronNotPrintableUsingThisFormat