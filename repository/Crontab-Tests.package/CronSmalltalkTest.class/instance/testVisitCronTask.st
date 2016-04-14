tests-as yet unclassified
testVisitCronTask
	| task |
	task := CronTask new
				comment: 'A comment.';
				command: '/usr/bin/cmd';
				minutes: 30 hours: $* days: (15 to: 18) months: #(2 3) daysOfWeek: $*;
				yourself.
	self
		assert: (((task accept: visitor) splitOn: Smalltalk os lineEnding) joinUsing: Character cr)
		equals: 'newTask: [ :task |
		task
			comment: ''A comment.'';
			command: ''/usr/bin/cmd'';
			minutes: 30 hours: $* days: (15 to: 18) months: #(2 3) daysOfWeek: $* ]'