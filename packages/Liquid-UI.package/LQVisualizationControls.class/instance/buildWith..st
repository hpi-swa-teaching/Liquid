toolbuilder
buildWith: builder

	| windowSpec |

	windowSpec := self buildWindowWith: builder specs: {
		(self questionListFrame: 1) -> [self buildQuestionListWith: builder].
		(self barChartFrame: 1) -> [self buildBarChartWith: builder].
	}.
	windowSpec label: self poll pollDraft title.
	 ^ builder build: windowSpec