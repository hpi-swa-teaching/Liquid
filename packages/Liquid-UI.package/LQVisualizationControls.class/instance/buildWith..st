toolbuilder
buildWith: builder

	| max windowSpec |
	
	max := 1.

	windowSpec := self buildWindowWith: builder specs: {
		(self questionListFrame: max) -> [self buildQuestionListWith: builder].
		(self barChartFrame: max) -> [self buildBarChartWith: builder].
	}.
	windowSpec label: self poll pollDraft title.
	 ^ builder build: windowSpec
		