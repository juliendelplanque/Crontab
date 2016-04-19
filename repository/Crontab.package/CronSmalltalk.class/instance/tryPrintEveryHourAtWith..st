frequency-printing
tryPrintEveryHourAtWith: aCronFrequency
	<frequencyFormat: 20>
	self checkIsCronAlwaysForSelectors: #(hours days months daysOfWeek) for: aCronFrequency.
	
	stream
		<< 'everyHourAt: ';
		<< aCronFrequency minutes asString.
	^ true