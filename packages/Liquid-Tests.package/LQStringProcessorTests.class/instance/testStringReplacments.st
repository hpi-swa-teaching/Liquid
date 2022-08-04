testing
testStringReplacments

	| replacements |
	replacements := Dictionary new 
		at: '{{surname}}' put: 'musterfrau';
		at: '{{firstname}}' put: 'erika';
		yourself.
		
	self assert: (LQStringProcessor replaceAll: replacements in: 'Hallo {{firstname}}, du bist ganz toll Herr/Frau {{surname}}') 
						equals: 'Hallo erika, du bist ganz toll Herr/Frau musterfrau'