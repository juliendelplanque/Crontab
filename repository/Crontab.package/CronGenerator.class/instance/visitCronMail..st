visiting
visitCronMail: aCronMail
	^ (' | mail -s ''{1}'' {2} {3}'
			format: { aCronMail subject .
						aCronMail mailAddress .
						self visitCronTaskOutput: aCronMail }) trimRight