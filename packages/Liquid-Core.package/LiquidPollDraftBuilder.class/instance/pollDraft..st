as yet unclassified
pollDraft: aDraft 
	aDraft questionList
		ifEmpty: [aDraft
				questionList: (OrderedCollection newFrom: {LiquidSingleChoiceQuestion new})].
	pollDraft := aDraft