class initialization
newWithQuestion: aQuestion

	^ LQFreeTextAnswer new
			questionId: aQuestion id;
			yourself