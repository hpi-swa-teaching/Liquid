as yet unclassified
at: key put: anObject 
	WebClient
		httpPost: url , '/?id=' , key
		content: (STON toString: anObject)
		type: 'application/ston'