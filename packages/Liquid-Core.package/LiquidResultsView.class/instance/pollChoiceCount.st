as yet unclassified
pollChoiceCount	
	|anArray count|
	count := 1.
	anArray := OrderedCollection new.
	(self poll pollDraft questionList first choiceList) do: 
		[:aChoice| anArray add: count. count := count +1].
	^anArray