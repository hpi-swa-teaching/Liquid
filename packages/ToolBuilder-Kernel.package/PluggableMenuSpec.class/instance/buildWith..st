construction
buildWith: builder
	self analyzeItemLabels.
	^ builder buildPluggableMenu: self