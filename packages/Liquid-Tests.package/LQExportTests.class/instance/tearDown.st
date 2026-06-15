running
tearDown

	| delimiter |
	delimiter := FileDirectory default pathNameDelimiter.
	#('pdf' 'csv' 'json') do: [:extension | | filePath |
		filePath := LQPoll pathToExport, delimiter, self poll id, '.', extension.
		FileDirectory default deleteFileNamed: filePath ifAbsent: []].
	super tearDown