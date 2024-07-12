toolbuilder
frame: bottomFraction fromTop: topFraction fromLeft: leftFraction width: rightFraction

	^ LayoutFrame new
		leftFraction: leftFraction;
		topFraction: topFraction;
		rightFraction: leftFraction + rightFraction;
		bottomFraction: bottomFraction offset: self bottomOffset;
		yourself