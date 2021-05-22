initialize
buildMenuWith: aBuilder
"This creates a dropdown-Menu with pairs of identifiers (Hi, two), which when clicked perform the attached method"
"Not currently used anywhere"
^ aBuilder pluggableMenuSpec new
	model: self;
	addList: {{'Hi'. #anAction}. {'two'.#anotherAction}};
	label: 'A Menu';
	yourself.