disharmonies
testNoRefusedParentBequest

	self assertAll: (self lint: #refusedParentBequest: except: {self class. LQHostMenu}) areEqualTo: false