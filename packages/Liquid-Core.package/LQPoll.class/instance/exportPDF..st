printing
exportPDF: aChartType

	| charts |
	charts := (self questionList select: [:question | self hasVotesForQuestion: question]) 
		collect: [:question | (LQVisualizationView newWithPoll: self chartType: aChartType) renderPictureFrom: question].
	^ (LQPdfExport poll: self charts: charts) export