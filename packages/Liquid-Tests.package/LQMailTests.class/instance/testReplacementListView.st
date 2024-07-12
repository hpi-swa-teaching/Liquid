testing
testReplacementListView

	self assert: self mailDialog replacementList equals: (OrderedCollection new
		addAll: LQUser new mailMapping keys;
		addAll: {'{{poll-id}}'. '{{poll-title}}'};
		yourself)