testing
testToolbuilderMethodsReturnSpecs

	self assert: ((self questionBuilder buildTitleInputWith: self builder) isMemberOf: PluggableTextSpec).
	self assert: ((self questionBuilder buildMaxNumberOfCharactersLabelWith: self builder) isMemberOf: PluggableTextSpec).
	self assert: ((self questionBuilder buildMaxNumberOfCharactersInputWith: self builder) isMemberOf: PluggableTextSpec)
	