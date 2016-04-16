accessing
timeAlways
	^ super timeAlways ==> [ :items | CronAlways new ]