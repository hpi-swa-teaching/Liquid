accessing
at: key ifPresent: do ifAbsentPut: anObject 
	| resp |
	resp := WebClient
				httpPut: url , '/?id=' , key
				content: (STON toString: anObject)
				type: 'application/ston'.
	(resp status = 409) ifTrue: [aBlock value]