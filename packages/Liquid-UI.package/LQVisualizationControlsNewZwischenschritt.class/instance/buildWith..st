toolbuilder
buildWith: aBuilder
	
^ aBuilder build: (aBuilder pluggablePanelSpec new
			model: self;
			children: {
				(self questionListFrame: 1) -> [self buildQuestionListWith: aBuilder].
				(self barChartFrame: 1) -> [self buildBarChartWith: aBuilder]};
			"closeAction: #stopRefreshing;"
			yourself)