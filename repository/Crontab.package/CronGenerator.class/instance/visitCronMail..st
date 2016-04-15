visiting
visitCronMail: aCronMail
	stream
		<< ' | mail -s ''';
		<< aCronMail subject;
		<< ''' ';
		<< aCronMail mailAddress;
		<< Character space.
	self visitCronTaskOutput: aCronMail.
	self removeTrailingWhiteSpace