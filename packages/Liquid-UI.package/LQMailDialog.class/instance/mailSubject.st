accessing
mailSubject

	^ mailSubject ifNil: [
		^ mailSubject := self isResultMail
			ifTrue: [self class defaultResultSubject]
			ifFalse: [self class defaultSubject]]