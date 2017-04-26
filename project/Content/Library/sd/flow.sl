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
        x: 110
        y: 206
        navigate:
          c74469e5-585d-8c86-eaa8-58f4aadec4ae:
            targetId: 145e75c6-459c-9601-f92d-c1b35d29a015
            port: SUCCESS
    results:
      SUCCESS:
        145e75c6-459c-9601-f92d-c1b35d29a015:
          x: 400
          y: 150
