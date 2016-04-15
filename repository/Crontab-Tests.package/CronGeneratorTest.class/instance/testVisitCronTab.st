tests-visiting
testVisitCronTab
	self cronTabForTests accept: visitor.
	self assert: visitor stream contents equals: self cronTabGeneratedForTests