communication
at: key ifAbsent: aBlock

	| resp |
	resp := self serverAt: key.
	resp isSuccess
		ifTrue: [^ STON fromString: resp content].
	(resp code = 401 and: [self currentPassword isNil]) ifTrue: [self currentPassword: self requestPassword.
												^  self at: key ifAbsent: aBlock].
												
	^ aBlock value