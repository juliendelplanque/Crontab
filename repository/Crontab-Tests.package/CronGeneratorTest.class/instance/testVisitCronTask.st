tests-visiting
testVisitCronTask
	| task |
	task := CronTask new
					comment: 'Backup everything.';
					command: '/usr/bin/backup';
					eachDayOfWeek: #('sunday' 'monday' 'wednesday') at: {'11:00' asTime . '15:00' asTime}.
	task accept: visitor.
	self
		assert: visitor stream contents
		equals: (('# Backup everything.
# ------------------
0 11 * * 0,1,3 /usr/bin/backup
0 15 * * 0,1,3 /usr/bin/backup
' splitOn: Character cr ) joinUsing: Smalltalk os lineEnding)