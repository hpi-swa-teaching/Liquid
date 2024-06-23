live-update
startRefreshing
	self polling: [[true]
			whileTrue: [| visualizationView |
				visualizationView := LQVisualizationView newWithPoll: self poll.
				self
					currentVisualization: (visualizationView
							visualizeResultsFor: (self poll questionList at: self index)).
				"Transcript show: 'refreshed'; cr."
				(Delay forSeconds: 2) wait]] fork