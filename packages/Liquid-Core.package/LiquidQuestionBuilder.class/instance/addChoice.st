as yet unclassified
addChoice
	| choice choicePanel |
	choice := LiquidChoice new.
	question choiceList add: LiquidChoice new.
	choicePanel := self dependents at: 3.
	choicePanel addMorph: (self buildChoice: choice at: (question choiceList size) with: builder).
	self halt.
