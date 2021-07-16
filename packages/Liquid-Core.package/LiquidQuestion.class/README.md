Each LQPoll contains one or more LQQuestions. Each LQQuestion has a title as well as a type.
Note that each subclass must implement type, indicating its type, as well as buildEmptyAnswer, returning an empty instance of itself.

Notable Instance Variables:
id: A randomly generated UUID.
