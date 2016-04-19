tests-frequency-printing
testTryPrintEveryHourWithFailing
	self
		should: [ visitor tryPrintEveryHourWith: (CronFrequency new hours: 0; yourself) ]
		raise: CronNotPrintableUsingThisFormat.
	self
		should: [ visitor tryPrintEveryHourWith: (CronFrequency new minutes: 5; yourself) ]
		raise: CronNotPrintableUsingThisFormat