buttons
buildMenuWith: aBuilder
"This creates a dropdown-Menu with pairs of identifiers (Hi, two), which when clicked perform the attached method"
^ aBuilder pluggableMenuSpec new
	model: self;
	addList: {{'Hi'. #answerList}. {'two'.#questionList}};
	label: 'A Menu';
	yourself.