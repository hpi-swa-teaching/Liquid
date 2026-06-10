toolbuilder
extent

	| defaultExtent |
	defaultExtent := super extent.
	^ (defaultExtent x - 100) @ (defaultExtent y - 300)