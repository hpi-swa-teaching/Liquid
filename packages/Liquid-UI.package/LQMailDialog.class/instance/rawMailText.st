accessing
rawMailText

	^ rawMailText ifNil: [
		^ rawMailText := self isResultMail
			ifTrue: [self class defaultResultMailText]
			ifFalse: [self class defaultMailText]]