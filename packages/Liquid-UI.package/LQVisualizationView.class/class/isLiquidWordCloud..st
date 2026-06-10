testing
isLiquidWordCloud: aMorph

	^ (aMorph isKindOf: PasteUpMorph) and: [aMorph hasProperty: #isLiquidWordCloud]
