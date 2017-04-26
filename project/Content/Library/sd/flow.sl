########################################################################################################################
#!!
#! @output length: length of input
#!!#
########################################################################################################################
namespace: sd
flow:
  name: flow
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
        x: 109
        y: 243
        navigate:
          fb516068-ef92-8355-5372-bf8699a66e93:
            targetId: ac5a68a4-e0ae-3782-5a07-947c751e7e97
            port: SUCCESS
    results:
      SUCCESS:
        ac5a68a4-e0ae-3782-5a07-947c751e7e97:
          x: 400
          y: 150
