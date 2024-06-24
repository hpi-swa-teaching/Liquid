initialize-release
initialize
	super initialize.
	self index: 1.
	self startRefreshing.
	self wrapperMorph: Morph new.
	self wrapperMorph color: Color transparent