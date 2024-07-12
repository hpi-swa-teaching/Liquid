testing
testStringReplacments

	| replacements formatString finalString |
	replacements := Dictionary new
		at: '{{surname}}' put: 'musterfrau';
		at: '{{firstname}}' put: 'erika';
		yourself.
	formatString := 'Hallo {{firstname}}, du bist ganz toll Herr/Frau {{surname}}'.
	finalString := 'Hallo erika, du bist ganz toll Herr/Frau musterfrau'.
	self assert: (LQStringProcessor replaceAll: replacements in: formatString) equals: finalString