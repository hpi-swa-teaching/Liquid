as yet unclassified
testNoRefusedParentBequest

	self assertAll: (self lint: #refusedParentBequest:) areEqualTo: false