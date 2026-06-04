supporting
pickGroupsFrom: aGroupCollection

	| remaining selected options pick |
	remaining := aGroupCollection asOrderedCollection.
	selected := OrderedCollection new.
	[remaining isEmpty] whileFalse: [
		options := OrderedCollection new add: '<< done >>'; addAll: remaining; yourself.
		pick := UIManager default chooseFrom: options title: 'Pick group to exclude'.
		(pick = 0 or: [pick = 1]) ifTrue: [^ selected].
		selected add: (options at: pick).
		remaining remove: (options at: pick)].
	^ selected