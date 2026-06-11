printing
exportPDF

	| chart |
	chart := (LQVisualizationView newWithPoll: self) renderPictureFrom: self questionList first.
	^ (LQPdfExport poll: self chart: chart) export