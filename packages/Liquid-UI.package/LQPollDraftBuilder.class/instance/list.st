accessing
list
   
	 ^ self pollDraft questionList collect: [ :q |
        (self pollDraft hasConditionForTarget: q id)
            ifTrue: [ '! ', q title ]
            ifFalse: [ q title ] ]