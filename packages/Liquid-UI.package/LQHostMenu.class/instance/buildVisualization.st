toolbuilder
buildVisualization

	| selected |
	(self pollList isEmpty or: [self currentPoll isZero]) ifTrue: [^ {PluggablePanelSpec new buildWith: ToolBuilder default}].
	selected := LQRemotePollRepoServer pollRepo at: self currentPollID.
	(selected isKindOf: LQKahootQuiz) ifTrue: [^ {PluggablePanelSpec new buildWith: ToolBuilder default}].
	self currentVisualizationControls ifNotNil: [:old | old removeDependent: self].
	self currentVisualizationControls: (LQVisualizationControls newWithPoll: selected).
	self currentVisualizationControls addDependent: self.
	^ {self currentVisualizationControls buildWith: ToolBuilder default}