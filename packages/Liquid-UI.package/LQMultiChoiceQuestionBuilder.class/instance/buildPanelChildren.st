toolbuilder
buildPanelChildren
	| builder children |
	builder := ToolBuilder default.
	children := OrderedCollection new.
	children add: (builder build: (self buildTitleInputWith: builder)).
	1 to: self choiceTexts size do: [:index |
		children add: (builder build: (self buildChoiceTextAt: index with: builder)).
		children add: (builder build: (self buildDeleteChoiceButtonAt: index with: builder))].
	children add: (builder build: (self buildAddChoiceButtonWith: builder)).
	children add: (builder build: (self buildMaxNumberOfChoicesInputWith: builder)).
	children add: (builder build: (self buildMaxNumberOfChoicesLabelWith: builder)).
	^ children asArray