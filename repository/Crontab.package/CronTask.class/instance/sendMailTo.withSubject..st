output
sendMailTo: aMailAddress withSubject: aString
	| out |
	out := (CronMail to: aMailAddress subject: aString).
	self output: out.
	^ out