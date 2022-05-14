toolbuilder
buildNextQuestionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Next Question';
		help: 'Answer the next question of the poll';
		action: #nextQuestion;
		frame: (LayoutFrame fractions: (0.65 @ 0.8 corner: 0.65 @ 0.8) offsets: (-193 @ 5 corner: 0 @ 50)) yourself