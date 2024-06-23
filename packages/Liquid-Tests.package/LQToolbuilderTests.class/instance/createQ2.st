helper-methods
createQ2

	| q2 |

	q2 := LQMultiChoiceQuestion new.
	q2 title: 'Question 2'.
	q2 addChoice: (LQChoice newFrom: 'Option 1 [UserGroup1]').
	q2 addChoice: (LQChoice newFrom: 'Option 2').
	^ q2