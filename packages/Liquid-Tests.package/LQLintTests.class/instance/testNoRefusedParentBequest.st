disharmonies
testNoRefusedParentBequest

	self assertAll: (self lint: #refusedParentBequest: except: {self class. LQHostMenu. LQKahootParticipantMenu}) areEqualTo: false