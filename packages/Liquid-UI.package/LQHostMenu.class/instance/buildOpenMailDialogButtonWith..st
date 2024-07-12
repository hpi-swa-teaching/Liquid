toolbuilder
buildOpenMailDialogButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Send Mails';
		help: 'You can only send mails if a User Set is selected in the poll draft builder.';
		action: #openMailDialog;
		enabled: #mailDialogButtonEnabled;
		yourself