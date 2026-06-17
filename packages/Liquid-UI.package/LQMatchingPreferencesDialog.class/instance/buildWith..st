toolbuilder
buildWith: aBuilder
    ^ aBuilder build: (aBuilder pluggableWindowSpec new
        model: self;
        label: 'Liquid - Matching Preferences';
        extent: self extent;
        children: {
            self buildTitleLabelWith: aBuilder.
            self buildAssignmentListWith: aBuilder.
            self buildCloseButtonWith: aBuilder};
        yourself)