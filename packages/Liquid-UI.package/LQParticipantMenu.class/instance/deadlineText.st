toolbuilder
deadlineText

	| deadline deadlineText |
	self poll isNil ifTrue: [ ^ '' ].
	self poll pollDraft isNil ifTrue: [ ^ '' ].
	deadline := self poll pollDraft deadline.
	deadline isNil ifTrue: [ ^ '' ].
	deadlineText := deadline.
	^ 'Deadline: ' , deadlineText dayOfMonth printString , '. ' , deadlineText monthName , ' ' , deadlineText year printString , ' - ' , (deadlineText hour printString copyReplaceAll: '' with: '') , ':' , (deadlineText minute printString padded: #left to: 2 with: $0) , ' Uhr'