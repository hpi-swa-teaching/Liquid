toolbuilder
buildLeaderboardWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #leaderboard;
		frame: (LayoutFrame fractions: (0.65 @ 0.15 extent: 0.3 @ 0.78));
		yourself
