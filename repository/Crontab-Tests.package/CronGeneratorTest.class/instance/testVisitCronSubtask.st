tests-visiting
testVisitCronSubtask
	| task |
	task := CronTask new
					command: '/usr/bin/speedtest';
					eachDayOfWeek: #('sunday' 'monday' 'wednesday') at: #('11:00' '15:30' '23:05') asTimes;
					mute;
					yourself.
	task subtasks with: #('11:0' '15:30' '23:5') do: [ :subtask :timeStr |
		| splitted |
		splitted := timeStr splitOn: $:.
		self
			assert: (subtask accept: visitor)
			equals: ('{1} {2} * * 0,1,3 /usr/bin/speedtest > /dev/null 2>&1'
							format: splitted reversed) ]