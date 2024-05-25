toolbuilder
buildRankingIndicesWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		"list: #choiceDescriptions;
		getIndex: #choiceSelected;
		setIndex: #choiceSelected:;
		getSelectionList: #choiceAt:;
		setSelectionList: #choiceAt:put:;"
		frame: (0.025 @ 0.2 corner: 0.05 @ 0.8);
		yourself