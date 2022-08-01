communication
at: key ifAbsent: aBlock

	| resp |
	resp := self serverAt: key.
	resp isSuccess
		ifTrue: [^ STON fromString: resp content].
	(resp code = 401 and: [self currentToken isNil]) ifTrue: [self currentToken: self requestToken.
												^  self at: key ifAbsent: aBlock].
												
	^ aBlock value