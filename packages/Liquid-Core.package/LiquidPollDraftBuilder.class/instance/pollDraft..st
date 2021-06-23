accessing
pollDraft: aDraft 
	aDraft questionList
		ifEmpty: [aDraft
				questionList: (OrderedCollection newFrom: {LiquidChoicesQuestion new})].
	pollDraft := aDraft