as yet unclassified
testCSVPrintingExptected
	^ 'Question 1;Q2;
Q1A2;Q2A1;
;Q2A2;' , Character linefeed asString collect: [:char | char = Character cr ifFalse: [^char] ifTrue: [Character lf]].
	