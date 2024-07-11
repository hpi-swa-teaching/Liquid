toolbuilder
buildWith: aBuilder

	| window logoBasedExtent |
	logoCanvas := LQLogo new.
	logoCanvas addDefaultLogo.
	logoBasedExtent := 1 @ 2.2 * logoCanvas logoMorph extent.
	"2.2 x allows some padding
	around the logo"
	"loads /image.png"
	window := aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Welcome to Liquid';
		minimumExtent: logoBasedExtent;
		extent: 0.5 * logoBasedExtent;
		children: {
			self buildEnterHostButtonWith: aBuilder.
			self buildEnterParticipantButtonWith: aBuilder.
			self buildLogoWith: aBuilder};
		yourself).
	"The extent is set to double the
	selected value, therefore it's
	multiplied with 0.5"
	^ window