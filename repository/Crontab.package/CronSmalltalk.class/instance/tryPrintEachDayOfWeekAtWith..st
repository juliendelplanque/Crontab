frequency-printing
tryPrintEachDayOfWeekAtWith: aCronFrequency
	<frequencyFormat: 40>
	self checkIsCronAlwaysForSelectors: #(days months) for: aCronFrequency.
	self checkIsNotCronAlwaysForSelectors: #(minutes hours) for: aCronFrequency.
	(aCronFrequency daysOfWeek isCronAlways or: [ aCronFrequency daysOfWeek isArray not ])
		ifTrue: [ CronNotPrintableUsingThisFormat signal ].
	
	stream
		<< 'eachDayOfWeek: ';
		<< '#('.
	
	aCronFrequency daysOfWeek doWithIndex: [ :dayIndex :i |
		stream
			<< $';
			<< (Week nameOfDay: dayIndex + 1);
			<< $'.
		i = aCronFrequency daysOfWeek size
			ifFalse: [ stream << Character space ] ].
	stream
		<< $).
	self printHHMMWith: aCronFrequency message: ' at:'.
	^ true