instance creation
newFrom: aString

	| processor choice |
	processor := LQChoiceProcessor new.
	choice := LQChoice new.
	choice
		description: (processor extractDescription: aString);
		excludedGroups: (processor extractGroups: aString);
		rawString: aString.
	^ choice