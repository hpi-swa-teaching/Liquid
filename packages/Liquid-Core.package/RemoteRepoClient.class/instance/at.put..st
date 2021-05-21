as yet unclassified
at: key put: anObject 
	WebClient
		httpPut: url , '/?id=' , key
		content: (STON toString: anObject)
		type: 'application/ston'