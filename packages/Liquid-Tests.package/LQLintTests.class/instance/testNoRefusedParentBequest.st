disharmonies
testNoRefusedParentBequest

	self assertAll: (self lint: #refusedParentBequest: except: {LQLintTests}) areEqualTo: false