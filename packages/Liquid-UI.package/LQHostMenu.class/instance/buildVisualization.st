toolbuilder
buildVisualization
	((self pollList size = 0) or: [self currentPoll = 0])
	ifTrue: [^{PluggablePanelSpec new buildWith: ToolBuilder default}].
	^{LQVisualizationControls new poll: (LQRemotePollRepoServer pollRepo at: self currentPollID); buildWith: ToolBuilder default}