namespace: folder
flow:
  name: flow2
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length:
            - origin_string: "${get_sp('io.cloudslang.base.from')}"
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 150
        y: 150
        navigate:
          83718787-ebc3-612f-a2c7-dc8cf068bad1:
            targetId: 116d2219-2fbc-72e3-90fe-8be3a62772c5
            port: SUCCESS
    results:
      SUCCESS:
        116d2219-2fbc-72e3-90fe-8be3a62772c5:
          x: 400
          y: 150
