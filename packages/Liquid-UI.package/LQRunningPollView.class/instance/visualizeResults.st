modifying
visualizeResults

	LQVisualizationView newWithPoll: (LQPollRepo default
		at: self pollId
		ifAbsent: [^ UIManager default inform: 'This poll has already been deleted.'])