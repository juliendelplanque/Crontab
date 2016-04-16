accessing
timeListRight
	^ super timeListRight ==> [ :items |
		items allButFirst ]