modifying
replacementList

	^ OrderedCollection new
		addAll: LQUser new mailMapping keys;
		addAll: {'{{poll-id}}'. '{{poll-title}}'};
		yourself