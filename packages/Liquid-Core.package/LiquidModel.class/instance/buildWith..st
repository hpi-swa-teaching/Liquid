as yet unclassified
buildWith: aBuilder 

^ aBuilder build: (aBuilder pluggableWindowSpec new
model: self;
label: 'Liquid';
extent: 500@400;
children: {self buildQuestionWith: aBuilder};
yourself).