testing
testGetUrl

	| url |
	url := 'http:/test:1234/12345'.
	self assert: (self objectInstance getUrlFrom: url with: 15) equals: 'http:/test:1234'