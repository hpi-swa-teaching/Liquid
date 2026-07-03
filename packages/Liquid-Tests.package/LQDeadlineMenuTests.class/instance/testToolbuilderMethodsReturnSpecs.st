testing
testToolbuilderMethodsReturnSpecs

	self assert: ((self deadlineMenu buildDayListWith: self builder) isMemberOf: PluggableListSpec).
	self assert: ((self deadlineMenu buildMonthListWith: self builder) isMemberOf: PluggableListSpec).
	self assert: ((self deadlineMenu buildConfirmButtonWith: self builder) isMemberOf: PluggableButtonSpec).
	self assert: ((self deadlineMenu buildClearButtonWith: self builder) isMemberOf: PluggableButtonSpec)