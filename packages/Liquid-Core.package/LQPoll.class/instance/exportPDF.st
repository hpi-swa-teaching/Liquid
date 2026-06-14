printing
exportPDF

	| charts |
	charts := self questionList collect: [:question |
		(LQVisualizationView newWithPoll: self) renderPictureFrom: question].
	^ (LQPdfExport poll: self charts: charts) export