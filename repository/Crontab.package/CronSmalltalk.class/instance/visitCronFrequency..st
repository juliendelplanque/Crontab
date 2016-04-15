visiting
visitCronFrequency: aCronFrequency
	stream
		<< 'minutes: ';
		<< aCronFrequency minutes asCronSmalltalk;
		<< ' hours: ';
		<< aCronFrequency hours asCronSmalltalk;
		<< ' days: ';
		<< aCronFrequency days asCronSmalltalk;
		<< ' months: ';
		<< aCronFrequency months asCronSmalltalk;
		<< ' daysOfWeek: ';
		<< aCronFrequency daysOfWeek asCronSmalltalk