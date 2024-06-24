toolbuilder
buildWith: aBuilder 
	"| logo assetLoader logoMorph |
	assetLoader := GitAssetLoader for: 'Liquid'.
	logo := assetLoader loadForm: 'liquid_logo.png'.
	logoMorph := ImageMorph new image: logo;
				 extent: 200 @ 200."
	"loads /image.png"
	^ aBuilder build: (aBuilder pluggableWindowSpec new model: self;
			 label: 'Welcome to Liquid';
			 extent: self extent;
			 "add: logoMorph;"
			 children: {self buildEnterHostButtonWith: aBuilder. self buildEnterParticipantButtonWith: aBuilder};
			 yourself)