toolbuilder
buildMultiChoiceInterface

	| children |
	children := OrderedCollection new.
	1 to: self choiceTexts size do: [:index | | textMorph |
		textMorph := self builder build: (self buildChoiceTextAt: index with: self builder).
		children add: textMorph.
		children add: (self builder build: (self buildDeleteChoiceButtonAt: index with: self builder))].
	children add: (self builder build: (self buildAddChoiceButtonWith: self builder)).
	^ children asArray