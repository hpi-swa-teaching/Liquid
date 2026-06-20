disharmonies
testNoRefusedParentBequest

	self assertAll: (self lint: #refusedParentBequest: except: {self class. LQPollDraftBuilder. LQHostMenu}) areEqualTo: false