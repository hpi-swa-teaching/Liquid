building
answerOfUser: aUser
    "Finde die Antwort dieses Users auf die Priority-Frage.
     Geht über das AnswerSet (per token) und greift dort die Answer per questionId ab."

    | userSet |
    userSet := poll answerSets
        detect: [:as | as token = aUser token]
        ifNone: [^ nil].
    ^ userSet answers
        at: priorityQuestion id
        ifAbsent: [nil]