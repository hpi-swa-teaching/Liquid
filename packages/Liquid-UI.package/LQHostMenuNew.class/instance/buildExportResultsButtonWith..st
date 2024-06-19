toolbuilder
buildExportResultsButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Export Results';
		 help: 'Export the results of the currently selected poll to ressources/DataExports as a .csv file named after the poll id.';
		 action: #exportResults;
		 yourself
		