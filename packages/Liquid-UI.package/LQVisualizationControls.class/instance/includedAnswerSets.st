toolbuilder
includedAnswerSets

	| all included |
	all := self poll answerSets.
	included := self groupFilter
		includedAnswerSetsFrom: all
		groupResolver: [:anAnswerSet | self poll groupOfAnswerSet: anAnswerSet].
	Transcript
		show: 'excluded=', self groupFilter excludedGroups printString;
		show: ' avail=', self poll availableGroups printString;
		show: ' perSet=', (all collect: [:as | self poll groupOfAnswerSet: as]) printString;
		show: ' all=', all size printString, ' incl=', included size printString; cr.
	^ included