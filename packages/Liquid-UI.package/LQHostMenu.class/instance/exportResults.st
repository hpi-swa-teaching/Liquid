modifying
exportResults

	| poll choice |
	poll := LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ 'This poll does not exist.'].
	choice := UIManager default
		chooseFrom: #('CSV' 'PDF' 'JSON')
		title: 'Choose export format'.
	choice = 1 ifTrue: [^ poll exportCSV].
	choice = 2 ifTrue: [^ poll exportPDF: self currentChartType].
	choice = 3 ifTrue: [^ poll exportJSON].