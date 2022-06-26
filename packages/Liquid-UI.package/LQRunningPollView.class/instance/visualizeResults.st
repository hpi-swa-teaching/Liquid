modifying
visualizeResults

	LQVisualizationControls openOn: (LQRemotePollRepoServer pollRepo
		at: self pollId
		ifAbsent: [^ UIManager default inform: 'This poll has already been deleted.'])