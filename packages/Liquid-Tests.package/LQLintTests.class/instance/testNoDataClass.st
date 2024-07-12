disharmonies
testNoDataClass

	self assertAllFalse: (self lint: #dataClass: except: {LQUser. LQChoice. LQTestCase})