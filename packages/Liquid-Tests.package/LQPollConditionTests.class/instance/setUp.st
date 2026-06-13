accessing
setUp

    super setUp.
    q1a1 := LQChoice newFrom: 'Yes'.
    q1a2 := LQChoice newFrom: 'No'.

    q1 := LQMultiChoiceQuestion new
        title: 'Are you a student?';
        choiceList: (OrderedCollection with: q1a1 with: q1a2);
        yourself.
    q2 := LQMultiChoiceQuestion new
        title: 'Which university?';
        choiceList: OrderedCollection new;
        yourself.
    q3 := LQMultiChoiceQuestion new
        title: 'What is your job?';
        choiceList: OrderedCollection new;
        yourself.

    draft := LQPollDraft new.
    draft questionList add: q1; add: q2; add: q3.
    draft addCondition: (LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: 'Yes'
        target: q2 id).

    poll := LQPoll newWithPollDraft: draft.
    evaluator := LQConditionEvaluator for: poll