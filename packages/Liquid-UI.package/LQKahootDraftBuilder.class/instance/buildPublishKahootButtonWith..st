toolbuilder
buildPublishKahootButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Publish Kahoot';
		help: 'Publish this Kahoot so participants can join with its ID.';
		action: #publishKahoot;
		yourself
