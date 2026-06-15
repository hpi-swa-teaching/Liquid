printing
exportPDF

	| charts |
	charts := (self questionList select: [:question | self hasVotesForQuestion: question]) 
		collect: [:question | (LQVisualizationView newWithPoll: self) renderPictureFrom: question].
	^ (LQPdfExport poll: self charts: charts) export