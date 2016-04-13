instance creation
to: aMailAddress subject: aString
	^ self new
		mailAddress: aMailAddress;
		subject: aString;
		yourself