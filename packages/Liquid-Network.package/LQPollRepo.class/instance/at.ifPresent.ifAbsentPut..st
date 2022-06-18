accessing
at: key ifPresent: do ifAbsentPut: anObject

	| resp |
	self halt.
	resp := WebClient
		httpPut: url, '/?id=', key
		content: (STON toString: anObject)
		type: 'application/ston'.
	resp code = 409 ifTrue: [do value]