frequency-printing
printHHMMWith: aCronFrequency message: aMessage
	(aCronFrequency minutes isInteger and: [ aCronFrequency hours isInteger ])
		ifFalse: [ CronNotPrintableUsingThisFormat signal ].
	stream
		<< aMessage;
		<< ' ''';
		<< aCronFrequency hours asString;
		<< $:.
	aCronFrequency minutes < 9 
		ifTrue: [
			stream
				<< $0;
				<< aCronFrequency minutes asString ]
		ifFalse: [ stream << aCronFrequency minutes asString ].
	stream
		<< ''' asTime'