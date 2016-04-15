tests-visiting
testVisitCronFile
	(CronFile filePath: '/var/log/example.log') accept: visitor.
	self assert: visitor stream contents equals: ' > /var/log/example.log'