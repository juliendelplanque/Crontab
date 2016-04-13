tests-testing
testHasSubtasks
	self deny: cronTask hasSubtasks.
	cronTask eachDayOfWeek: #('sunday' 'monday' 'wednesday') at: #('11:00' '15:30' '23:05') asTimes.
	self assert: cronTask hasSubtasks