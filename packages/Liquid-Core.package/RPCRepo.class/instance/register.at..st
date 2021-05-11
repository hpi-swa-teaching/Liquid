as yet unclassified
register: object at: id
	self halt.
	self items at: id ifAbsentPut: object
	