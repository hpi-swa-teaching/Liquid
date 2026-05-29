deadline
deadlineText

	| dl |
	dl := self pollDraft deadline.
	dl isNil ifTrue: [^ ''].
	^ String streamContents: [:s |
		s
			nextPutAll: (dl dayOfMonth printString padded: $0 to: 2);
			nextPut: $.;
			nextPutAll: (dl monthIndex printString padded: $0 to: 2);
			nextPut: $.;
			nextPutAll: dl year printString;
			nextPut: $ ;
			nextPutAll: (dl hour printString padded: $0 to: 2);
			nextPut: $:;
			nextPutAll: (dl minute printString padded: $0 to: 2)]