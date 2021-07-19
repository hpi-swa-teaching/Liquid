accessing
visualizeResults
	LiquidVisualizationView
		newWithPoll: (PollRepo default
				at: self pollId
				ifAbsent: [^ UIManager default inform: 'This poll has already been deleted.']).