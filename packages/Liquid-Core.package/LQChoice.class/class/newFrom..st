instance creation
newFrom: aString
	| processor choice |
	
	processor := LQChoiceProcessor new.
	
	choice := LQChoice new.
	choice description: (processor extractDescription: aString).
	choice excludedGroups: (processor extractGroups: aString).
	
	^ choice
