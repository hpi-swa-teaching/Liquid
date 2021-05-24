as yet unclassified
getChildren
	^ self pollDraft questionList
				collectWithIndex: [:aQuestion :i | builder build: (self buildQuestion: aQuestion at: i with: builder)]