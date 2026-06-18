testing
testChartTypeToggleDisabledForFreeTextQuestion

	self visualizationControls stopRefreshing.
	self poll pollDraft addQuestion: LQFreeTextQuestion new.
	self visualizationControls index: self poll questionList size.
	self deny: self visualizationControls chartTypeToggleEnabled.
	self visualizationControls index: 1.
	self assert: self visualizationControls chartTypeToggleEnabled