deadline
buildDeadlineInputWith: aBuilder
 
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #deadlineText;
		setText: #deadlineText:;
		help: 'Enter voting deadline as: DD.MM.YYYY HH:MM  (e.g. 31.12.2025 18:00) — leave empty for no deadline';
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.125;
			rightFraction: 0.5;
			bottomFraction: 0.975;
			yourself);
		yourself
