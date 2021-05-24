as yet unclassified
choices
	| list |
	list := question choiceList
				collectWithIndex: [:choice :i | self
						buildChoice: choice
						at: i
						with: builder].
	list
		add: (builder build: (builder pluggableTextSpec new
					model: self;
					editText: #addChoice:;
					frame: (LayoutFrame
						fractions: (0 @ 0 extent: 1 @ 0)
						offsets: (0 @ (question choiceList size * 30) extent: 0 @ 30)))).
	^ list