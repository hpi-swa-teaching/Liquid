printing
ensureDirectory

	| directory |
	directory := FileDirectory on: LQPoll pathToExport.
	directory exists ifFalse: [FileDirectory default createDirectory: LQPoll pathToExport]