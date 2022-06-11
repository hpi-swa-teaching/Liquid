as yet unclassified
send401ResponseCode: req

	^ req sendResponseCode: 401 content: '401 Unauthorized' type: 'text/plain; charset=utf-8' close: true