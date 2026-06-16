widgets optional
buildPluggableScrollPane: spec

	^ spec children
		ifNotNil: [self buildPluggablePanel: spec]
		ifNil: [spec morph ifNil: [spec morphClass new]]