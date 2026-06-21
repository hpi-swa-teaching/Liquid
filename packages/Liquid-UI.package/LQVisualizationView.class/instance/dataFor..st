data
dataFor: aQuestion

    | result sortedData yAxisLabel |

    sortedData := self sortDataFor: aQuestion.

    result := SWDataLabeled
        fromXValues: (self poll getChoiceIdentifiersFor: aQuestion)
        versusYValues: (sortedData collect: [:element | element first]).

    result setLabels: (sortedData collect: [:element | element second]).

    yAxisLabel := aQuestion isPriorityQuestion 
        ifTrue: ['Points'] 
        ifFalse: ['Times Voted'].

    result setAllDimensionNames: (Array with: 'Choice' with: yAxisLabel).
    "-----------------------------"

    ^ result