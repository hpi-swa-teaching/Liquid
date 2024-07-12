toolbuilder
buildVisualization

	(self pollList isEmpty or: [self currentPoll isZero]) ifTrue: [^ {PluggablePanelSpec new buildWith: ToolBuilder default}].
	self currentVisualizationControls: (LQVisualizationControls newWithPoll: (LQRemotePollRepoServer pollRepo at: self currentPollID)).
	^ {self currentVisualizationControls buildWith: ToolBuilder default}