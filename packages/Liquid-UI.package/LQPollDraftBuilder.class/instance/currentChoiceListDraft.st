accessing
currentChoiceListDraft

	| textStream duplicates|
	
	textStream := TextStream on: Text new.
	duplicates := LQDuplicateDetector identifyDuplicates: self question choiceList.
	
	self question choiceList
		do: [:item | 
			(duplicates includes: item)
				ifTrue: [textStream
						withAttribute: (TextColor color: Color red)
						do: [textStream nextPutAll: item]]
				ifFalse: [textStream nextPutAll: item].
			textStream cr].
		
	^textStream contents.