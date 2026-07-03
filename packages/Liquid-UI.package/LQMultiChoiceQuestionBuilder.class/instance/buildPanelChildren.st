toolbuilder
buildPanelChildren

	| children |
	self clearChoiceFieldModels.
	children := OrderedCollection new.
	children add: (self builder build: (self buildTitleInputWith: self builder)).
	children add: self buildChoicesScrollMorph.
	children add: (self builder build: (self buildYesNoButtonWith: self builder)).
	children add: (self builder build: (self buildTrueFalseButtonWith: self builder)).
	children add: (self builder build: (self buildPositiveNeutralNegativeButtonWith: self builder)).
	children add: (self builder build: (self buildMaxNumberOfChoicesInputWith: self builder)).
	children add: (self builder build: (self buildMaxNumberOfChoicesLabelWith: self builder)).
	^ children asArray