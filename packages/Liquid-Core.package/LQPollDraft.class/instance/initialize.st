initialize-release
initialize

    super initialize.
    self
        questionList: OrderedCollection new;
        conditions: OrderedCollection new;
        pollDraftId: UUID new asString