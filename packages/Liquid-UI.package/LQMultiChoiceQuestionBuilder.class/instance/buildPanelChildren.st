toolbuilder
buildPanelChildren

	| children |
	self clearChoiceFieldModels.
	children := OrderedCollection new.
	children add: (self builder build: (self buildTitleInputWith: self builder)).
	1 to: self choiceTexts size do: [:index |
		children add: (self builder build: (self buildChoiceTextAt: index with: self builder)).
		children add: (self builder build: (self buildDeleteChoiceButtonAt: index with: self builder))].
	children add: (self builder build: (self buildAddChoiceButtonWith: self builder)).
	children add: (self builder build: (self buildMaxNumberOfChoicesInputWith: self builder)).
	children add: (self builder build: (self buildMaxNumberOfChoicesLabelWith: self builder)).
	^ children asArray