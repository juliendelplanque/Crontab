frequency-printing
tryPrintEveryHourWith: aCronFrequency
	<frequencyFormat: 10>
	self checkIsCronAlwaysForSelectors: #(hours days months daysOfWeek) for: aCronFrequency.
	aCronFrequency minutes = 0
		ifFalse: [ CronNotPrintableUsingThisFormat signal ].
	
	stream
		<< 'everyHour'.
	^ true