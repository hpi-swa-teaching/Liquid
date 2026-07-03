toolbuilder
hostButtonFrameForIndex: anInteger
	| safeTotal buttonHeight top bottom |
	safeTotal := self numberOfHostButtons max: 1.
	buttonHeight := self hostButtonHeight.

	anInteger = safeTotal ifTrue: [
		^ self frame: 1.0 fromTop: (1.0 - buttonHeight) fromLeft: 0.75 width: 0.25
	].

	top := (anInteger - 1) * buttonHeight.
	bottom := top + buttonHeight.

	^ self frame: bottom fromTop: top fromLeft: 0.75 width: 0.25