tests-visiting
testVisitCronFrequency
	| frequency |
	self assert: (CronFrequency new accept: visitor) equals: '* * * * *'.
	frequency := CronFrequency new
						minutes: 42.
	self assert: (frequency accept: visitor) equals: '42 * * * *'.
	frequency hours: 15.
	self assert: (frequency accept: visitor) equals: '42 15 * * *'.
	frequency days: (15 to: 19).
	self assert: (frequency accept: visitor) equals: '42 15 15-19 * *'.
	frequency months: #(1 2).
	self assert: (frequency accept: visitor) equals: '42 15 15-19 1,2 *'.
	frequency daysOfWeek: 0.
	self assert: (frequency accept: visitor) equals: '42 15 15-19 1,2 0'.