accessing
choiceTextAt: anIndex
	| text choice choices duplicates |
	text := self choiceTexts at: anIndex ifAbsent: [''].
	(text withBlanksTrimmed isEmpty) ifTrue: [^ text asText].
	choice := self choiceForTextAt: anIndex.
	choices := self question choiceList.
	duplicates := LQDuplicateDetector new identifyDuplicates: (choices collect: [:each | each description]).
	^ (LQDuplicateDetector new mark: duplicates in: {choice} with: (TextColor color: Color red))