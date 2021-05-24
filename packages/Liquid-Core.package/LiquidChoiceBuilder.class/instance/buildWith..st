as yet unclassified
buildWith: aBuilder
	^ aBuilder pluggableTextSpec new
			model: self;
			getText: #text;
			setText: #text: