tests-visiting
testVisitCronTab
	self assert: (self cronTabForTests accept: visitor) equals: self cronTabGeneratedForTests