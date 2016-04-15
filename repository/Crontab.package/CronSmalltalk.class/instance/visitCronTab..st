visiting
visitCronTab: aCronTab
	^ ('(CronTab named: ''{1}''){2}'
			format: { aCronTab crontabName . self lineEnding }) ,
	((aCronTab commentsAndTasks collect: [ :commentOrTask |
		String tab , (commentOrTask accept: self) ])
			fold: [ :a :b | a , ';' , self lineEnding , b ]) ,
	(';{1}	generate' format: { self lineEnding })