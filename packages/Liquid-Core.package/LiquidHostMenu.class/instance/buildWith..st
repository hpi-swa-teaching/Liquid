initialize
buildWith: aBuilder 
|LiquidSystemWindow|

LiquidSystemWindow := aBuilder build: (aBuilder pluggableWindowSpec new
	model: self;
	label: 'Liquid - Host';
	extent: 500@400;
	children: { self buildQuestionListWith: aBuilder.
					self buildChoiceListWith: aBuilder.
					"self buildQuestionButtonWith: aBuilder."
					self buildChoiceButtonWith: aBuilder.
					self buildQuestionInputWith: aBuilder.
					"self buildAnswerInputWith: aBuilder."
					self buildSavePollButtonWith: aBuilder.
					self buildDownloadPollButtonWith: aBuilder.
					};
	yourself).
	
	"Builds a complete, ready to use Input field, which is not attached to the System-Window as a child (which gets built above), but is attached as a dependent to the 'Model' object. The 'Model' object also has the SystemWindow as its dependent. Since we want our Input field to be a dependent of the SystemWindow, we assign it as a new dependent to our SystemWindow (using addPaneMorph:) after the SystemWindow was built. The advantage of this approach is that we can attach/detach individual parts of the Window (e.g. Buttons, Inputs) as often and in any order we want, without having to worry about their order in the myDependents-List of the 'Model', since they are all stored as instance variables."

	"When building additional fields using this method, take care to replace any occurances of (self dependents at: x) with the corresponding instance variable. See an example in addQuestion:"
	self choiceInputField: (aBuilder build: (self buildChoiceInputWith: aBuilder)).
	
	self addQuestionButton: self buttonPrefab copy.
	self addQuestionButton label: 'Add Question';
		action: #addCurrentQuestion;
		frame: (0@0.25 corner: 0.4@0.35).
	self addQuestionButton: (self addQuestionButton buildWith: aBuilder). 
		
	LiquidSystemWindow addPaneMorph: self choiceInputField.
	LiquidSystemWindow addPaneMorph: self addQuestionButton.
	
	
	^ LiquidSystemWindow