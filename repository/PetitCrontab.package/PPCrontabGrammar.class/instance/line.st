accessing
line
	^ #space asParser star ,
	((timeDefinition , #space asParser plus) times: 5) ,
	#space asParser star ,
	command