answerExclusion
excludes: anIndex
    | excluded |

    excluded := self isChoiceExcluded: (self choiceList at: anIndex).

    excluded ifTrue: [
        UIManager default
            inform: LQParticipantMenu new messageOwnVote ].

    ^ excluded