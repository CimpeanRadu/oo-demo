########################################################################################################################
#!!
#! @output length: length of input
#!!#
########################################################################################################################
namespace: sd
flow:
  name: flow2
  inputs:
    - input:
        default: ''
        private: false
        sensitive: false
  workflow:
    - length:
        loop:
          for: "l in '1','2','3','4'"
          do:
            io.cloudslang.base.strings.length:
              - origin_string: '${input}'
          break: []
          publish:
            - length
            - origin_string: "${get_sp('io.cloudslang.base.from')}"
        navigate:
          - SUCCESS: SUCCESS
  outputs:
    - length: '${length}'
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 100
        y: 150
        navigate:
          4a5f2859-1592-dc29-ef13-237a098e48cb:
            targetId: d4b39830-2af8-a484-166e-670ce74c962b
            port: SUCCESS
    results:
      SUCCESS:
        d4b39830-2af8-a484-166e-670ce74c962b:
          x: 400
          y: 150
