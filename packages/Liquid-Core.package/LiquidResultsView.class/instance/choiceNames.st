as yet unclassified
choiceNames
	|anArray|
	anArray := OrderedCollection new.
	(self poll pollDraft questionList first choiceList) do: 
		[:aChoice| anArray add: aChoice].
	^anArray