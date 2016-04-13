*Crontab
asCronString
	^ (self collect: #asCronString) fold: [ :a :b | a , ',' , b ]