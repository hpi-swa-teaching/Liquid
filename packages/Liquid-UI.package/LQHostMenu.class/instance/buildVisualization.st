toolbuilder
buildVisualization
	((self pollList isEmpty) or: [self currentPoll = 0])
	ifTrue: [^{PluggablePanelSpec new buildWith: ToolBuilder default}].
	self currentVisualizationControls: (LQVisualizationControls newWithPoll: (LQRemotePollRepoServer pollRepo at: self currentPollID)).
	^{self currentVisualizationControls buildWith: ToolBuilder default}