as yet unclassified
testGetPollId
	| url |
	url:= 'http:/test:1234/12345'.
	self assert: (self objectInstance getPollIdFrom: url with: 16) equals: '12345'