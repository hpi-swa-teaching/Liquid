baseline
baseline: spec
<baseline>
         spec
             for: #'common'
             do: [
                 spec
                     package: 'Liquid-Core';
                     package: 'Liquid-Network';
                     package: 'Liquid-UI';
                     package: 'Liquid-Tests' with: [spec requires: #('default')];
                     yourself.
                 spec
                     group: 'default' with: #('Liquid-Core' 'Liquid-Network' 'Liquid-UI');
                     group: 'tests' with: #('Liquid-Tests');
                     yourself].