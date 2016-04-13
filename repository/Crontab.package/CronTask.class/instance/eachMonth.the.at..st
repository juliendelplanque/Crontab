frequency
eachMonth: aCollectionOfString the: anIntegerOrACollectionOfIntegerOrInterval at: aTimeOrACollectionOfTime
	aTimeOrACollectionOfTime 
		updateTask: self
		withMonths: aCollectionOfString
		days: anIntegerOrACollectionOfIntegerOrInterval