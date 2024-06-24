toolbuilder
buildStopServerButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Stop Server';
		 help: 'Stops the liquid server which allows access to your local polls.';
		 action: #stopServer;
		 yourself
		