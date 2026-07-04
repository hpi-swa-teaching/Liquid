toolbuilder
buildCopyKahootLinkButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Copy Link';
		help: 'Copy the Kahoot join link to the clipboard.';
		action: #copyKahootLink;
		yourself
