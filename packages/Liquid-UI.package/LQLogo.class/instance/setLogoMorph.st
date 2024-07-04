accessing
setLogoMorph
	| imageLogo |
	imageLogo := self loadDefaultLogo.
	self
		logoMorph: (self createLogoMorph: imageLogo)