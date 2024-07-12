accessing
loadLogo: aStringAsName

	| assetLoader imageLogo |
	assetLoader := GitAssetLoader for: 'Liquid'.
	[imageLogo := assetLoader loadForm: aStringAsName]
		on: AssertionFailure
		do: [imageLogo := nil].
	^ imageLogo