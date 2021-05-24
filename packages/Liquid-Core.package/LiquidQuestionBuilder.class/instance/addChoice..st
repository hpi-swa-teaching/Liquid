as yet unclassified
addChoice: aText 
	| choice choicePanel oldChoiceText model |
	choice := LiquidChoice new title: aText asString.
	question choiceList add: LiquidChoice new.
	model := LiquidChoiceBuilder new choice: choice.
	
	choicePanel := self dependents at: 3.
	oldChoiceText := choicePanel submorphs last.
	oldChoiceText
		model: model;
		editTextSelector: #text:.
	
	choicePanel addMorphBack: self buildNewChoice.