as yet unclassified
buildChoice: aChoice at: anIndex with: aBuilder
	^ aBuilder build: ((LiquidChoiceBuilder new choice: aChoice;
				 buildWith: aBuilder)
				frame: (LayoutFrame
						fractions: (0 @ 0 extent: 1 @ 0)
						offsets: (0 @ (anIndex - 1 * 30) extent: 0 @ 30)))