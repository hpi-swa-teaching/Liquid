toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildChartTypeToggleWith: aBuilder.
			self buildChartAreaWith: aBuilder.
			self buildQuestionListWith: aBuilder.
			self buildGroupFilterWith: aBuilder};
		yourself)
