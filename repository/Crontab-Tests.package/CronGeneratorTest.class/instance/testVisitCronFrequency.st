tests-visiting
testVisitCronFrequency
	| frequency |
	CronFrequency new accept: visitor.
	self assert: visitor stream contents equals: '* * * * *'.
	visitor := CronGenerator new.
	frequency := CronFrequency new
						minutes: 42;
						accept: visitor;
						yourself.
	self assert: visitor stream contents equals: '42 * * * *'.
	visitor := CronGenerator new.
	frequency
		hours: 15;
		accept: visitor;
		yourself.
	self assert: visitor stream contents equals: '42 15 * * *'.
	visitor := CronGenerator new.
	frequency
		days: (15 to: 19);
		accept: visitor;
		yourself.
	self assert: visitor stream contents equals: '42 15 15-19 * *'.
	visitor := CronGenerator new.
	frequency
		months: #(1 2);
		accept: visitor;
		yourself.
	self assert: visitor stream contents equals: '42 15 15-19 1,2 *'.
	visitor := CronGenerator new.
	frequency
		daysOfWeek: 0;
		accept: visitor;
		yourself.
	self assert: visitor stream contents equals: '42 15 15-19 1,2 0'.