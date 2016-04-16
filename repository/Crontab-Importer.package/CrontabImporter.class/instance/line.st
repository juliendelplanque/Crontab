accessing
line
	^ super line ==> [ :items |
		| times |
		times := items second collect: #first.
		CronTask new
			minutes: times first
			hours: times second
			days: times third
			months: times fourth
			daysOfWeek: times fifth;
			command: items fourth;
			yourself ]