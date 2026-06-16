deadline
deadlineYearList 
	| years currentYear |
	
	years := OrderedCollection new.
	years add: '--'.
	
	currentYear := Date today year.
	currentYear to: currentYear + 10 do: [:y | years add: y printString].
	
	^ years asArray