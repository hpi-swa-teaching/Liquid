class initialization
newWithQuestion: aQuestion andAnswer: anAnswer

	^ LQFreeTextAnswer new
		questionId: aQuestion id;
		answer: anAnswer;
		yourself