toolbuilder
choiceList

	^ self currentQuestion ifNil: [#()] ifNotNil: [:q | q choices]
