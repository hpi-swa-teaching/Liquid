toolbuilder
buildVisualization
	((self pollList isEmpty) or: [self currentPoll = 0])
	ifTrue: [^{PluggablePanelSpec new buildWith: ToolBuilder default}].
	^{LQVisualizationControls new poll: (LQRemotePollRepoServer pollRepo at: self currentPollID); buildWith: ToolBuilder default}