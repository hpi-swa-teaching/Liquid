baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Liquid-Core';
				package: 'Liquid-Tests' with: [spec requires: #('default' 'SwaLint')];
				yourself.
			spec
				group: 'default' with: #('Liquid-Core');
				group: 'tests' with: #('Liquid-Tests')];
				yourself