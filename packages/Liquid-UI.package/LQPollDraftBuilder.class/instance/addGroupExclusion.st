modifying
addGroupExclusion

	(LQGroupExclusionEditor new
		addExclusionFor: self pollDraft
		questionBuilder: (self questionBuilders at: self currentQuestion ifAbsent: [nil]))
		ifTrue: [self changed: #buildQuestionBuilder]