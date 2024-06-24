toolbuilder
buildWith: aBuilder 
	^ aBuilder build: (aBuilder pluggablePanelSpec new
	model: self;
	children: {self buildBarChartWith: aBuilder. self
	buildQuestionListWith: aBuilder};
	yourself)