toolbuilder
questionCounterText

	| editedString |
	editedString := ''.
	(self currentQuestion wasEdited) ifTrue: [
		editedString := ' (edited)'
		].
	^ 'Question', ': ', self currentQuestionIndex, ' / ', self poll questionList size,  editedString
