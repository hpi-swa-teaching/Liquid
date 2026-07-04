accessing
choiceDescriptions

	| result |
	result := ''.
	self question choices do: [:line |
		result size > 0 ifTrue: [result := result , String cr].
		result := result , line asString].
	^ result