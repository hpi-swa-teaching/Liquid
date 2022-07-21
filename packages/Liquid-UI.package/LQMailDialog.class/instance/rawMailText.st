accessing
rawMailText

	^ rawMailText ifNil: [^rawMailText := self class defaultMailText]