accessing
at: key ifAbsent: aBlock

	| resp |
	resp := self serverAt: key.
	resp isSuccess
		ifTrue: [^ STON fromString: resp content].
	(self shouldAskPasswordForResponse: resp) ifTrue: [self token: self requestToken.
												^  self at: key ifAbsent: aBlock].									
	^ aBlock value