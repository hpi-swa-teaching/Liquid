baseline
baseline: spec
<baseline>
         spec
             for: #'common'
             do: [
                 spec
                    baseline: 'SwaLint'
					    with: [spec repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
                     package: 'Liquid-Core';
                     package: 'Liquid-Network';
                     package: 'Liquid-UI';
                     package: 'Liquid-Tests' with: [spec requires: #('SwaLint' 'default')];
                     yourself.
                 spec
                     group: 'default' with: #('Liquid-Core' 'Liquid-Network' 'Liquid-UI');
                     group: 'tests' with: #('Liquid-Tests');
                     yourself].