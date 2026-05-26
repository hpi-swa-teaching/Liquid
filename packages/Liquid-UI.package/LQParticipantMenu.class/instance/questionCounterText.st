toolbuilder
questionCounterText

	| editedString |
	editedString := ''.
	(self currentQuestion wasEdited) ifTrue: [
		editedString := '(edited)'
		].
	^ 'Question', editedString,  ': ', self currentQuestionIndex, ' / ', self poll questionList size