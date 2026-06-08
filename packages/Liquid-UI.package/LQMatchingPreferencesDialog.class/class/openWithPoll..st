instance creation
openWithPoll: aPoll
    | dialog |
    dialog := self new.
    dialog poll: aPoll.
    dialog computeAssignments.
    ToolBuilder open: dialog.
    ^ dialog
