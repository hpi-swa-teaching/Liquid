toolbuilder
buildVisualizationPanelWith: builder

    ^ builder pluggablePanelSpec new
        model: self;
        layout: #vertical;
        children: #buildVisualization;
        yourself
