toolbuilder
buildSendAnswerButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Send Answer';
		help: 'Submit your final answer. You cannot change it';
		action: #sendAnswer;
		frame: (LayoutFrame fractions: (0.9 @ 0.8 corner: 0.9 @ 0.8) offsets: (-130 @ 5 corner: 0 @ 50)) yourself