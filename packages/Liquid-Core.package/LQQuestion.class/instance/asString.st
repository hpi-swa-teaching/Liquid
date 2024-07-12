initialize
asString

	self title ifNil: [^ 'Untitled Question'].
	^ self title