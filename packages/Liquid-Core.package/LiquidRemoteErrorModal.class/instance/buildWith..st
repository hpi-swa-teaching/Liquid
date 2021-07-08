as yet unclassified
buildWith: aBuilder 
	^ aBuilder build: (aBuilder pluggableWindowSpec new model: self;
			 label: 'Liquid - Remote Error';
			 extent: 400 @ 100;
			 children: {self buildErrorTextBoxWith: aBuilder};
			 yourself)
