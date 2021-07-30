accessing
pollDraft: aDraft 
	aDraft questionList
		ifEmpty: [aDraft
				questionList: (OrderedCollection newFrom: {LQChoicesQuestion new})].
	pollDraft := aDraft