baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'StatisticsWorkbench' with: [
	                        spec
	                                repository: 'github://hpi-swa-teaching/StatisticsWorkbench:dev/packages'];
				baseline: 'SwaLint' with: [
	                        spec
	                                repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
				package: 'Liquid-Core' with: [spec requires: #('libraries')];
				package: 'Liquid-Tests' with: [spec requires: #('SwaLint' 'default')];
				yourself.
			spec
				group: 'libraries' with: #('StatisticsWorkbench');
				group: 'default' with: #('Liquid-Core');
				group: 'tests' with: #('Liquid-Tests')];
				yourself
