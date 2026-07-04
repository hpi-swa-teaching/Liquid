live-update
replaceWrapperContentsWith: aMorph

	aMorph position: 0 @ 0.
	self wrapperMorph owner
		ifNil: [aMorph extent: self defaultVisualizationWidth @ self defaultVisualizationHeight]
		ifNotNil: [:owner | aMorph extent: owner extent].
	self wrapperMorph submorphsDo: [:m | m delete].
	self wrapperMorph addMorph: aMorph