modifying
removeCondition: aCondition

    conditions := conditions reject: [ :c | c == aCondition ]