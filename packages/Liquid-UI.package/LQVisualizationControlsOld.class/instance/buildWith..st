toolbuilder
buildWith: builder
	
^ builder build: (builder pluggablePanelSpec new
			model: self;
			children: {
				(self questionListFrame: 1) -> [self buildQuestionListWith: builder].
				(self barChartFrame: 1) -> [self buildBarChartWith: builder]};
			"closeAction: #stopRefreshing;"
			yourself)