tests-visiting
testVisitCronSubtask
	| task last |
	task := CronTask new
					command: '/usr/bin/speedtest';
					eachDayOfWeek: #('sunday' 'monday' 'wednesday') at: #('11:00' '15:30' '23:05') asTimes;
					mute;
					yourself.
	last := ''.
	task subtasks with: #('11:0' '15:30' '23:5') do: [ :subtask :timeStr |
		| splitted |
		splitted := timeStr splitOn: $:.
		subtask accept: visitor.
		last := last , '{1} {2} * * 0,1,3 /usr/bin/speedtest > /dev/null 2>&1'
							format: splitted reversed.
		self
			assert: visitor stream contents
			equals: last ]