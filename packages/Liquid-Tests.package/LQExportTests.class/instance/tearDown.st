running
tearDown

	| delimiter |
	delimiter := FileDirectory default pathNameDelimiter.
	#('pdf' 'csv' 'json') do: [:extension | | filePath |
		filePath := LQExport pathToExport, delimiter, self poll id, '.', extension.
		FileDirectory default deleteFileNamed: filePath ifAbsent: []].
	super tearDown