tests-as yet unclassified
testVisitCronTab
	| tab |
	tab := (CronTab named: 'My crontab')
				comment: 'A comment.';
				newTask: [ :task |
					task
						comment: 'Backup everything.';
						command: '/usr/bin/backup';
						minutes: 30 hours: $* days: (15 to: 18) months: #(2 3) daysOfWeek: $* ];
				newTask: [ :task |
					task
						comment: 'Watch.';
						command: '/usr/bin/watch';
						minutes: #(0 15 30 45) hours: $* days: $* months: $* daysOfWeek: $* ].
	
	self
		assert: (((tab accept: visitor) splitOn: Smalltalk os lineEnding) joinUsing: Character cr)
		equals: '(CronTab named: ''My crontab'')
	comment: ''A comment.'';
	newTask: [ :task |
		task
			comment: ''Backup everything.'';
			command: ''/usr/bin/backup'';
			minutes: 30 hours: $* days: (15 to: 18) months: #(2 3) daysOfWeek: $* ];
	newTask: [ :task |
		task
			comment: ''Watch.'';
			command: ''/usr/bin/watch'';
			everyHourAt: #(0 15 30 45) ];
	generate'