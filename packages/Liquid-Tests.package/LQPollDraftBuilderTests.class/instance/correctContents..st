testing
correctContents: aQuestion
	^(aQuestion isKindOf: LQMultiChoiceQuestion)
						or: (aQuestion isKindOf: LQPriorityQuestion)