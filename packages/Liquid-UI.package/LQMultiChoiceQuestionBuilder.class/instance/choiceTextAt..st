accessing
choiceTextAt: anIndex
	| text trimmed descriptions duplicates |
	text := self choiceTexts at: anIndex ifAbsent: [''].
	trimmed := text withBlanksTrimmed.
	trimmed isEmpty ifTrue: [^ text asText].
	descriptions := self choiceTexts collect: [:each | each withBlanksTrimmed].
	duplicates := LQDuplicateDetector new identifyDuplicates: descriptions.
	(duplicates includes: trimmed)
		ifTrue: [
			| stream |
			stream := TextStream on: Text new.
			stream withAttribute: (TextColor color: Color red) do: [stream nextPutAll: text].
			^ stream contents]
		ifFalse: [^ text asText]