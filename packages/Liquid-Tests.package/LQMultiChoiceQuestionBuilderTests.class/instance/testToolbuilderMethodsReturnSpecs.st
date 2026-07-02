testing
testToolbuilderMethodsReturnSpecs
	self assert: ((self questionBuilder buildTitleInputWith: self builder) isMemberOf: PluggableTextSpec).
	self assert: ((self questionBuilder buildMaxNumberOfChoicesLabelWith: self builder) isMemberOf: PluggableLabelSpec).
	self assert: ((self questionBuilder buildMaxNumberOfChoicesInputWith: self builder) isMemberOf: PluggableTextSpec).
	self assert: ((self questionBuilder buildAddChoiceButtonWith: self builder) isMemberOf: PluggableButtonSpec).
	self assert: ((self questionBuilder buildChoiceTextAt: 1 with: self builder) isMemberOf: PluggableTextSpec).
	self assert: self questionBuilder buildPanelChildren size >= 4