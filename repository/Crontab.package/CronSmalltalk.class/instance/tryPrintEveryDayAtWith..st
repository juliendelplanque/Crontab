frequency-printing
tryPrintEveryDayAtWith: aCronFrequency
	<frequencyFormat: 30>
	self checkIsCronAlwaysForSelectors: #(days months daysOfWeek) for: aCronFrequency.
	
	self printHHMMWith: aCronFrequency message: 'everyDayAt:'.
	^ true