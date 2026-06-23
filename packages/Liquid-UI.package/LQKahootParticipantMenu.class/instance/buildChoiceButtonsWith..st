toolbuilder
buildChoiceButtonsWith: aBuilder

	| panel |
	self hasSubmitted ifTrue: [
		^ aBuilder pluggableTextSpec new
			model: self;
			getText: #waitingForNextQuestionText;
			readOnly: true;
			frame: (LayoutFrame fractions: (0.05 @ 0.30 extent: 0.55 @ 0.55));
			yourself
	].

	panel := aBuilder pluggablePanelSpec new
		model: self;
		frame: (LayoutFrame fractions: (0.05 @ 0.30 extent: 0.55 @ 0.55));
		children: OrderedCollection new;
		yourself.
		
	1 to: 4 do: [:i |
		| btn x y w h |
		w := 0.48. h := 0.48.
		x := i \\ 2 = 1 ifTrue: [0] ifFalse: [0.52].
		y := i <= 2 ifTrue: [0] ifFalse: [0.52].
		
		btn := aBuilder pluggableButtonSpec new
			model: self;
			label: ('choice', i asString, 'Label') asSymbol;
			action: ('submitChoice', i asString) asSymbol;
			enabled: ('isChoice', i asString, 'Enabled') asSymbol;
			frame: (LayoutFrame fractions: (x @ y extent: w @ h));
			yourself.
		panel children add: btn.
	].
	
	^ panel
