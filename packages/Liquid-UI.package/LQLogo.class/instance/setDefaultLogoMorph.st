accessing
setDefaultLogoMorph
	| imageLogo |
	imageLogo := self loadDefaultLogo.
	self
		logoMorph: (self createLogoMorph: imageLogo)