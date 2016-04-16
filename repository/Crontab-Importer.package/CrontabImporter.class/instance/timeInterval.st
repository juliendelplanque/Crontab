accessing
timeInterval
	^ super timeInterval ==> [ :items |
		items first to: items last ]