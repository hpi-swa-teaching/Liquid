accessing
refreshChoiceFieldTexts
	self dependents do: [:each |
		(each isKindOf: LQMultiChoiceChoiceField) ifTrue: [each changed: #text]]