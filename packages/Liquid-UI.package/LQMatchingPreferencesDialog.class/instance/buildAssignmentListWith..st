toolbuilder
buildAssignmentListWith: aBuilder
    ^ aBuilder pluggableListSpec new
        model: self;
        list: #assignmentRows;
        frame: (LayoutFrame new
            topFraction: 0.1; bottomFraction: 0.88;
            leftFraction: 0.01; rightFraction: 0.99;
            yourself);
        yourself
