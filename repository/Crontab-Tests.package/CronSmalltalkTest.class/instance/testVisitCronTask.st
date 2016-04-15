tests-as yet unclassified
testVisitCronTask
	| task |
	task := CronTask new
				comment: 'A comment.';
				command: '/usr/bin/cmd';
				minutes: 30 hours: $* days: (15 to: 18) months: #(2 3) daysOfWeek: $*;
				yourself.
	task accept: visitor.
	self
		assert: ((visitor stream contents splitOn: Smalltalk os lineEnding) joinUsing: Character cr)
		equals: 'newTask: [ :task |
		task
			comment: ''A comment.'';
			command: ''/usr/bin/cmd'';
			minutes: 30 hours: $* days: (15 to: 18) months: #(2 3) daysOfWeek: $* ]'