as yet unclassified
buildQuestionListWith: aBuilder 
	^ aBuilder pluggablePanelSpec new model: self;
		frame: (LayoutFrame
				fractions: (0 @ 0 extent: 1 @ 0.8)
				offsets: (0 @ 30 extent: 0 @ -30));
		children: (self pollDraft questionList
				collectWithIndex: [:aQuestion :i | self buildQuestion: aQuestion at: i with: aBuilder])