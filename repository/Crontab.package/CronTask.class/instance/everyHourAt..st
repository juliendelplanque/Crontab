frequency
everyHourAt: anIntegerOrACollectionOfInteger
	self frequency: (CronFrequency new
								minutes: anIntegerOrACollectionOfInteger;
								yourself)