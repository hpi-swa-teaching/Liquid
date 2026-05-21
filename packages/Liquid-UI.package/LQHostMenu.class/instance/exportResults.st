modifying
exportResults

	| poll choice |
	poll := LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ 'This poll does not exist.'].
	choice := UIManager default
		chooseFrom: #('CSV' 'PDF')
		title: 'Choose export format'.
	choice = 1 ifTrue: [^ poll exportCSV].
	choice = 2 ifTrue: [^ poll exportPDF]