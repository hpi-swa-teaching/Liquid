as yet unclassified
choices
	| list |
	list := question choiceList
				collect: [:choice | builder build: ((LiquidChoiceBuilder new choice: choice;
				 buildWith: builder))].
	list
		add: self buildNewChoice.
	^ list