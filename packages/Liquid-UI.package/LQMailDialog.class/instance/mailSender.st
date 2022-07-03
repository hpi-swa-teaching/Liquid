accessing
mailSender
	^ mailSender ifNil: [^mailSender := self class defaultSender]