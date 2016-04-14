as yet unclassified
visitCronTask: aCronTask
	^ 'newTask: [ :task |{1}		task{2}			{3};{4}			command: ''{5}'';{6}			{7} ]' format: {
						Smalltalk os lineEnding .
						Smalltalk os lineEnding .
						aCronTask comment accept: self .
						Smalltalk os lineEnding .
						aCronTask command .
						Smalltalk os lineEnding .
						aCronTask frequency accept: self }