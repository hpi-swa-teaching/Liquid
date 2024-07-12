helper-methods
createQ1

	| q1 |
	q1 := LQMultiChoiceQuestion new.
	q1 title: 'Question 1'.
	q1 addChoice: (LQChoice newFrom: 'Option 1 [UserGroup1]').
	q1 addChoice: (LQChoice newFrom: 'Option 2').
	^ q1