visiting
visitCronSubtask: aCronSubtask
	^ ('{1} {2} {3}'
			format: { aCronSubtask frequency accept: self .
						aCronSubtask command .
						aCronSubtask output accept: self }) trimRight