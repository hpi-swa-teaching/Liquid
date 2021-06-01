accessing
getCurrentlySelectedQuestion

	^ self questionList at: (self dependents at: 2) getCurrentSelectionIndex