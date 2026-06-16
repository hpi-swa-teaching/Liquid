toolbuilder
buildWith: builder

    | windowSpec |
    windowSpec := self buildWindowWith: builder specs: (self windowSpecsWith: builder).
    windowSpec label: 'Liquid - Host'.
    windowSpec closeAction: #stopRefreshingVisualization.
    ^ builder build: windowSpec
