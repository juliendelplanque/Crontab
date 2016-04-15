tests
testTimeDefinition
	self parse: '8' rule: #timeDefinition.
	self parse: '45' rule: #timeDefinition.
	self parse: '1-3' rule: #timeDefinition.
	self parse: '1-30' rule: #timeDefinition.
	self parse: '10-30' rule: #timeDefinition.
	self parse: '1,3' rule: #timeDefinition.
	self parse: '1,2,3' rule: #timeDefinition.
	self parse: '1,5-30,3' rule: #timeDefinition.
	self parse: '10-30,5,7' rule: #timeDefinition.
	self parse: '1,3,10-15' rule: #timeDefinition.
	self parse: '*' rule: #timeDefinition