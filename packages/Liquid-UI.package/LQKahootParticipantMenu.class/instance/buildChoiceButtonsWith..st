toolbuilder
buildChoiceButtonsWith: aBuilder

	| panel children |
	self hasSubmitted ifTrue: [^ self buildWaitingScreenWith: aBuilder].
	
	children := OrderedCollection new.
	
	1 to: 4 do: [:i | | button x y w h |
		w := 0.48.
		h := 0.48.
		x := i \\ 2 = 1 ifTrue: [0] ifFalse: [0.52].
		y := i <= 2 ifTrue: [0] ifFalse: [0.52].
		
		button := aBuilder pluggableButtonSpec new
			model: self;
			label: ('choice', i asString, 'Label') asSymbol;
			action: ('submitChoice', i asString) asSymbol;
			enabled: ('isChoice', i asString, 'Enabled') asSymbol;
			frame: (LayoutFrame fractions: (x @ y extent: w @ h));
			yourself.
		children add: button].
	
	panel := aBuilder pluggablePanelSpec new
		model: self;
		frame: (LayoutFrame fractions: (0.05 @ 0.3 extent: 0.55 @ 0.55));
		children: children;
		yourself.
	
	^ panel