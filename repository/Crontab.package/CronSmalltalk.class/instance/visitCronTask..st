visiting
visitCronTask: aCronTask
	^ 'newTask: [ :task |{1}		task{2}			{3};{4}			command: ''{5}'';{6}			{7} ]' format: {
						self lineEnding .
						self lineEnding .
						aCronTask comment accept: self .
						self lineEnding .
						aCronTask command .
						self lineEnding .
						aCronTask frequency accept: self }