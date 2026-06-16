I am a tool builder, that is an object which knows how to create concrete widgets from abstract specifications. Those specifications are used by tools which want to be able to function in diverse user interface paradigms, such as MVC, Morphic, Tweak, wxWidgets etc.

The following five specs must be supported by all implementations:
	* PluggableButton
	* PluggableList
	* PluggableText
	* PluggablePanel
	* PluggableWindow

The following specs are optional:
	* PluggableTree: If not supported, the tool builder must answer nil when asked for a pluggableTreeSpec. Substitution will require client support so clients must be aware that some tool builders may not support trees (MVC for example, or Seaside). See examples in FileListPlus or TestRunnerPlus.
	* PluggableMultiSelectionList: If multi-selection lists are not supported, tool builder will silently support regular single selection lists.
	* PluggableInputField: Intended as a HINT for the builder that this widget will be used as a single line input field. Unless explicitly supported it will be automatically substituted by PluggableText.
	* PluggableActionButton: Intended as a HINT for the builder that this widget will be used as push (action) button. Unless explicitly supported it will be automatically substituted by PluggableButton.
	* PluggableRadioButton: Intended as a HINT for the builder that this widget will be used as radio button. Unless explicitly supported it will be automatically substituted by PluggableButton.
	* PluggableCheckBox: Intended as a HINT for the builder that this widget will be used as check box. Unless explicitly supported it will be automatically substituted by PluggableButton.
