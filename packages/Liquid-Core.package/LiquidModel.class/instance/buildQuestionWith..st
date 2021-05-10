as yet unclassified
buildQuestionWith: aBuilder

^ aBuilder pluggableTextSpec new
model: self;
getText: #question;
readOnly: true;
yourself.