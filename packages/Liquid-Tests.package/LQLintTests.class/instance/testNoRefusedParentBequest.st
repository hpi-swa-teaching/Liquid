disharmonies
testNoRefusedParentBequest

	self assertAll: (self lint: #refusedParentBequest: except: {self class. LQPollDraftBuilder}) areEqualTo: false
