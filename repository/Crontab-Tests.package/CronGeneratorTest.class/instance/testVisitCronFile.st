tests-visiting
testVisitCronFile
	self assert: ((CronFile filePath: '/var/log/example.log') accept: visitor) equals: ' > /var/log/example.log'