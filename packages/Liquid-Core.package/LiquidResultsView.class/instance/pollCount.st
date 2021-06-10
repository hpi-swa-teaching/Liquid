as yet unclassified
pollCount	
	|counts currentChoice|
	
	counts := OrderedCollection new.
	(poll pollDraft questionList first choiceList) do: [:aChoice| counts add: 0].

	currentChoice := 0.
	(poll pollDraft questionList first choiceList) do: 
			[:aChoice | currentChoice:= (currentChoice +1).  poll answerSets do: 
				[:anAnswerSet |((anAnswerSet answers at: poll pollDraft questionList first id) votedChoice  = aChoice) 
					ifTrue: [counts at: currentChoice put:((counts at: currentChoice) + 1)]]].
	^counts
	