communication
at: key ifAbsent: aBlock

	| resp |
	resp := self serverAt: key.
	resp isSuccess
		ifTrue: [^ STON fromString: resp content].
	(resp code = 401 and: [self token isNil]) ifTrue: [self token: self requestToken.
												^  self at: key ifAbsent: aBlock].
												
	^ aBlock value