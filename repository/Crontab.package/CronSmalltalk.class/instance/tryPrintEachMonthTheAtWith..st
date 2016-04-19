frequency-printing
tryPrintEachMonthTheAtWith: aCronFrequency
	<frequencyFormat: 50>
	self checkIsCronAlwaysForSelectors: #(daysOfWeek) for: aCronFrequency.
	self checkIsNotCronAlwaysForSelectors: #(minutes hours days) for: aCronFrequency.
	aCronFrequency months isCronAlways
		ifTrue: [ stream << 'eachMonthThe: ' ]
		ifFalse: [ 
			stream
				<< 'eachMonth: #(';
				<< ((aCronFrequency months collect: [ :i | '''',(Month nameOfMonth: i),'''' ])
						joinUsing: Character space);
				<< ') the: ' ].
	stream
		<< aCronFrequency days.
	self printHHMMWith: aCronFrequency message: ' at:'.
	^ true