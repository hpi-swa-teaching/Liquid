instance creation
openWithPoll: aPoll strategy: aMatcherClass
    | dialog |
    dialog := self new.
    dialog poll: aPoll.
    dialog matcherClass: aMatcherClass.
    dialog computeAssignments.
    ToolBuilder open: dialog.
    ^ dialog
