accessing
lines
	^ super lines ==> [ :items |
		CronTab new
			commentsAndTasks: (items flattened reject: #isCharacter);
			yourself ]