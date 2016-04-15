tests
testTimeList
	self parse: '1,3' rule: #timeList.
	self parse: '1,2,3' rule: #timeList.
	self parse: '1,5-30,3' rule: #timeList.
	self parse: '10-30,5,7' rule: #timeList.
	self parse: '1,3,10-15' rule: #timeList.