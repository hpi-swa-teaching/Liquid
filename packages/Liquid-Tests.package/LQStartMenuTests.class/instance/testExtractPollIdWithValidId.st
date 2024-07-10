testing
testExtractPollIdWithValidId
	| url |
	url:= 'http:/test:1234/1234'.
	self assert: (self objectInstance extractAndValidatePollIdAndURL: url) equals: {'http:/test:1234/'. '1234'}.
