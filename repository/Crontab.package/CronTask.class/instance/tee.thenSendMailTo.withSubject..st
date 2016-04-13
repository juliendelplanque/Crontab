output
tee: aFileReference thenSendMailTo: aMailAddress withSubject: aString
	| out |
	out := self tee: aFileReference.
	out outputTo: (CronMail to: aMailAddress subject: aString).
	^ out