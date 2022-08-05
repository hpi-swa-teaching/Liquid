disharmonies
testNoRefusedParentBequest

	self assertAll: (self lint: #refusedParentBequest: except: {self class}) areEqualTo: false