namespace: f
flow:
  name: f
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length: []
        navigate: []
  results:
    - FAILURE
extensions:
  graph:
    steps:
      length:
        x: 73
        y: 70
    results:
      FAILURE:
        295682d2-0fcf-e479-3641-23dd8aa158d7:
          x: 142
          y: 152
