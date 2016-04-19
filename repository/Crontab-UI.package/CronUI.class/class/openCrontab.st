crontab-opening
openCrontab
	| file |
	file := (UIManager default chooseFullFileNameMatching: nil label: 'Choose a crontab')
					ifNil: [ ^self ].
	GTPlayground openContents: (CrontabImporter new parse: file asFileReference contents) generateSmalltalk