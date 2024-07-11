testing
testToolbuilderMethodsReturnSpecs

	self assert: ((self questionBuilder buildTitleInputWith: self builder) isMemberOf: PluggableTextSpec).
	self assert: ((self questionBuilder buildMaxNumberOfChoicesLabelWith: self builder) isMemberOf: PluggableTextSpec).
	self assert: ((self questionBuilder buildMaxNumberOfChoicesInputWith: self builder) isMemberOf: PluggableTextSpec).
	self assert: ((self questionBuilder buildChoicesInputWith: self builder) isMemberOf: PluggableTextSpec).
	