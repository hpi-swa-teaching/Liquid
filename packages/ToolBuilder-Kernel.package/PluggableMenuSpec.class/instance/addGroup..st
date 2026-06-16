construction
addGroup: aBlock

	| oldLastItem |
	oldLastItem := self lastItem.
	self addLine.
	aBlock cull: self.
	self lastItem ~~ oldLastItem
		ifTrue: [self addLine]
		ifFalse: [
			self lastItem ifNotNil: [:item | item separator: false]].