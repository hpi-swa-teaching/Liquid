toolbuilder
hostButtonFrameForIndex: anInteger
	| safeTotal buttonHeight top bottom |
	safeTotal := self numberOfHostButtons max: 1.
	buttonHeight := 0.08. "Elegante Standard-Buttonhöhe für Seitenleisten"

	"Sonderregel für den LETZTEN Button ('Stop Server'): Immer ganz unten an den Boden pinnen!"
	anInteger = safeTotal ifTrue: [
		^ self frame: 1.0 fromTop: (1.0 - buttonHeight) fromLeft: 0.75 width: 0.25
	].

	"Alle normalen Buttons bündig von oben (Y = 0.0) nach unten stapeln:"
	top := (anInteger - 1) * buttonHeight.
	bottom := top + buttonHeight.

	^ self frame: bottom fromTop: top fromLeft: 0.75 width: 0.25