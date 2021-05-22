accessing
buildButtonPrefabWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'ButtonPrefab';
	action: #throwNoAction;
	frame: (0@0 corner: 0.1@0.1); "leftFraction@topFraction corner: rightFraction@bottomFraction" 
	yourself.