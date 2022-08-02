toolbuilder
buildBarChartWith: aBuilder

	| pluggableScrollPaneSpec  |
	
	pluggableScrollPaneSpec := aBuilder pluggableScrollPaneSpec new.
	pluggableScrollPaneSpec 
		model: self;
		morph: self wrapperMorph.

	^ pluggableScrollPaneSpec