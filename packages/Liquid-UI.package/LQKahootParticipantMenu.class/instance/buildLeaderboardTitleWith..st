toolbuilder
buildLeaderboardTitleWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #leaderboardTitleString;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.65 @ 0.05 extent: 0.3 @ 0.08));
		yourself
