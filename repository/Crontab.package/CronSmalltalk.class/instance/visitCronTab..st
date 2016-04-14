as yet unclassified
visitCronTab: aCronTab
	^ ('(CronTab named: ''{1}''){2}'
			format: { aCronTab crontabName . Smalltalk os lineEnding }) ,
	((aCronTab commentsAndTasks collect: [ :commentOrTask |
		String tab , (commentOrTask accept: self) ])
			fold: [ :a :b | a , ';' , Smalltalk os lineEnding , b ]) ,
	(';{1}	generate' format: { Smalltalk os lineEnding })