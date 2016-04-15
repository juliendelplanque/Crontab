tests-visiting
testVisitCronTee
	(CronTee filePath: '/var/log/example.log') accept: visitor.
	self assert: visitor stream contents trimRight equals: ' | tee /var/log/example.log'