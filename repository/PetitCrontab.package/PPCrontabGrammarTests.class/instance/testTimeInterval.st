tests
testTimeInterval
	self parse: '1-3' rule: #timeInterval.
	self parse: '1-30' rule: #timeInterval.
	self parse: '10-30' rule: #timeInterval