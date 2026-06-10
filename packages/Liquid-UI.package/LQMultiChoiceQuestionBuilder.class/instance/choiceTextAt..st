accessing
choiceTextAt: anIndex
	| text trimmed descriptions duplicates description |
	text := self choiceTexts at: anIndex ifAbsent: [''].
	trimmed := text withBlanksTrimmed.
	trimmed isEmpty ifTrue: [^ text asText].
	descriptions := (self choiceTexts select: [:each | each withBlanksTrimmed notEmpty]) collect: [:each | (LQChoice newFrom: each) description].
	duplicates := LQDuplicateDetector new identifyDuplicates: descriptions.
	description := (LQChoice newFrom: text) description.
	(duplicates includes: description)
		ifTrue: [
			| stream |
			stream := TextStream on: Text new.
			stream withAttribute: (TextColor color: Color red) do: [stream nextPutAll: text].
			^ stream contents]
		ifFalse: [^ text asText]