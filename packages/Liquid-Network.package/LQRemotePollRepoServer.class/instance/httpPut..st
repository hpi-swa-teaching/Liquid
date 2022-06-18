request handlers
httpPut: req

	self halt.
	self objectRepo
		at: (req fields at: 'id')
		ifPresent: [^ req sendResponseCode: 409 content: '' type: 'application/ston' close: true]
		ifAbsentPut: (STON fromString: req content).
	req send200Response: 'OK'