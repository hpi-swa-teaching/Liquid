toolbuilder
buildWith: aBuilder 
	^ aBuilder build: (aBuilder pluggableWindowSpec new model: self;
			 label: #title;
			 extent: 500 @ 400;
			 children: {self buildTitleInputWith: aBuilder. self buildChoicesInputWith: aBuilder. self buildRunPollButtonWith: aBuilder} yourself)