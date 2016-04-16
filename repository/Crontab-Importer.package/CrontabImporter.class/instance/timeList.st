accessing
timeList
	^ super timeList ==> [ :items | items flattened reject: #isNil]