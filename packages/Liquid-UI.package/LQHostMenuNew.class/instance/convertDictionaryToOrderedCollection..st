accessing
convertDictionaryToOrderedCollection: aDictionary 
	| orderedCollection |
	orderedCollection := OrderedCollection new.
	"aDictionary
	associationsDo: [:assoc | orderedCollection add:
	assoc]. "
	orderedCollection := aDictionary associations asOrderedCollection.
	^ orderedCollection