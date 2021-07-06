buttons
buildSendAnswerButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Send Answer';
	action: #sendAnswer;
	frame: (LayoutFrame
				fractions: (0.9@0.8 corner: 0.9@0.8)
				offsets: (-193@5 corner: 0@50))
	yourself