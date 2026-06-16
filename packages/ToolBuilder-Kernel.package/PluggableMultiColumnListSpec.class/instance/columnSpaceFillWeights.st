accessing
columnSpaceFillWeights
	"For each column, define the relative space-fill weight, which will be used if the resizing strategy is set to #spaceFill."
	
	^ columnSpaceFillWeights ifNil: [#(1)]