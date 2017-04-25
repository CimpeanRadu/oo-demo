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
        x: 62
        y: 115
        navigate:
          50d22659-4f82-e86d-1da4-615db1534faf:
            targetId: 8e480aba-f5c1-8f76-de3b-aa7ac0cc415b
            port: SUCCESS
    results:
      SUCCESS:
        8e480aba-f5c1-8f76-de3b-aa7ac0cc415b:
          x: 400
          y: 150
