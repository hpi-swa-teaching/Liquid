as yet unclassified
httpPut: req 
	self objectRepo
		at: (req fields at: 'id')
		put: (STON fromString: req content).
	req send200Response: 'OK'