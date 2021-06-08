as yet unclassified
httpGet: req 
	| item |
	item := self objectRepo
				at: (req fields at: 'id')
				ifAbsent: [^ req send404Response].
	req
		send200Response: (STON toString: item)