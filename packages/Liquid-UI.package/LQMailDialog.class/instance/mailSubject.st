accessing
mailSubject

	^ mailSubject ifNil: [^ mailSubject := self class defaultSubject]