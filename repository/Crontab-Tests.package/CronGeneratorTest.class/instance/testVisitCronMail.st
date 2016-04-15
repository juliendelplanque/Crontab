tests-visiting
testVisitCronMail
	CronMail new
		subject: 'Hello';
		mailAddress: 'hello@pharo.com';
		accept: visitor.
	self assert: visitor stream contents trimRight equals: ' | mail -s ''Hello'' hello@pharo.com'