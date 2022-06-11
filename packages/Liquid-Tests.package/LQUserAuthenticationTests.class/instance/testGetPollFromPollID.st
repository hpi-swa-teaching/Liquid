as yet unclassified
testGetPollFromPollID

	self assert: true equals: (STON toString: (LQPollRepo default at: self poll id)) == (STON toString: self poll).