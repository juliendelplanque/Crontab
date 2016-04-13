tests-visiting
testVisitCronMail
	self assert: (CronMail new
							subject: 'Hello';
							mailAddress: 'hello@pharo.com';
							accept: visitor) equals: ' | mail -s ''Hello'' hello@pharo.com'