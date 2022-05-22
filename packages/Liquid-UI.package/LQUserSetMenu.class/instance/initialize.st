toolbuilder
initialize

	"Die UserSets müssen eigentlich aus dem Repo kommen, das hier dient nur als Test"
	"self userSets: ({ 
		((LQUserSet new)
			addUser: (LQUser newFromCollection: {'1'. 'kanditat1'. 'group1'});
			addUser: (LQUser newFromCollection: {'2'. 'kanditat2'. 'group2'})
			).
			((LQUserSet new)
			addUser: (LQUser newFromCollection: {'1'. 'kanditat1'. 'group1'});
			addUser: (LQUser newFromCollection: {'2'. 'kanditat2'. 'group2'})
			)}) asOrderedCollection."