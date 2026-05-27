toolbuilder
buildVisualization

	(self pollList isEmpty or: [self currentPoll isZero]) ifTrue: [^ {PluggablePanelSpec new buildWith: ToolBuilder default}].
	self currentVisualizationControls ifNotNil: [:old | old removeDependent: self].
	self currentVisualizationControls: (LQVisualizationControls newWithPoll: (LQRemotePollRepoServer pollRepo at: self currentPollID)).
	self currentVisualizationControls addDependent: self.
	^ {self currentVisualizationControls buildWith: ToolBuilder default}