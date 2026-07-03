instance creation
newWithPollDraft: aPollDraft

    ^ self new
        pollDraft: aPollDraft;
        conditions: (aPollDraft conditions ifNil: [ OrderedCollection new ]) copy;
        yourself