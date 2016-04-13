tests-visiting
testVisitCronTee
	self assert: ((CronTee filePath: '/var/log/example.log') accept: visitor) equals: ' | tee /var/log/example.log'