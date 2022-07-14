communication
at: key ifAbsent: aBlock

	| resp |
	resp := self serverAt: key.
	resp isSuccess
		ifTrue: [^ STON fromString: resp content].
	(resp code = 401) ifTrue: [self currentPassword: self requestPassword. 
												^ aBlock value "self at: key ifAbsent: aBlock"].
	^ aBlock value