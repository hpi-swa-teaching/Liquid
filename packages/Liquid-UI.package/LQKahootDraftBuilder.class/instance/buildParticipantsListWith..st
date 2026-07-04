toolbuilder
buildParticipantsListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #participantList;
		yourself
