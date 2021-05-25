buttons
buildDownloadPollButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Show resultsl';
	action: #downloadPoll;
	frame: (LayoutFrame new
				topFraction: 0.10;
				bottomFraction: 0.20;
				leftFraction: 0.4;
				rightFraction: 0.6;
				yourself);
	yourself.