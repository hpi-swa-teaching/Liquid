accessing
loadLogoMorph
	|assetLoader logo|
	"assetLoader := GitAssetLoader for: 'Liquid'.
	logo := assetLoader loadForm: 'liquid_logo.png'."
	self logoMorph: (Morph new)"(ImageMorph new image: logo)"