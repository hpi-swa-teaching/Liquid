as yet unclassified
buildWith: aBuilder 
	window := aBuilder build: (aBuilder pluggableWindowSpec new model: self;
					 label: 'Build a new Poll!';
					 extent: 500 @ 100;
					 children: {aBuilder pluggableTextSpec new model: self;
						 getText: #title;
						 editText: #title:;
						
						frame: (LayoutFrame
								fractions: (0 @ 0 extent: 1 @ 0)
								offsets: (0 @ 0 extent: 0 @ 30)). aBuilder pluggablePanelSpec new model: self;
						
						frame: (LayoutFrame
								fractions: (0 @ 0 extent: 1 @ 0.8)
								offsets: (0 @ 30 extent: 0 @ -30));
						
						children: (self pollDraft questionList
								collectWithIndex: [:aQuestion :i | (LiquidQuestionBuilder new question: aQuestion;
										 buildWith: aBuilder)
										frame: (LayoutFrame
												fractions: (0 @ 0 extent: 1 @ 0)
												offsets: (0 @ (i - 1 * 30) extent: 0 @ 30))]). aBuilder pluggableButtonSpec new label: 'Add Question';
						
						action: [window
								addPaneMorph: (aBuilder build: (LiquidQuestionBuilder new
											question: (LiquidSingleChoiceQuestion new title: 'Type in your question here')))];
						
						frame: (LayoutFrame
								fractions: (0 @ 1 extent: 1 @ 0)
								offsets: (0 @ -60 extent: 0 @ 30)). aBuilder pluggableButtonSpec new label: 'Run Poll';
						
						action: [self pollDraft startSurveyWithId: 'mockup'];
						
						frame: (LayoutFrame
								fractions: (0 @ 1 extent: 1 @ 0)
								offsets: (0 @ -30 extent: 0 @ 30))} yourself).
	^ window