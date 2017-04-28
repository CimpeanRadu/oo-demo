namespace: f.g
flow:
  name: g
  workflow:
    - length:
        do:
          io.cloudslang.base.lists.length: []
        navigate:
          - FAILURE: on_failure
    - length_1:
        do:
          io.cloudslang.base.strings.length: []
        navigate: []
  results:
    - FAILURE
extensions:
  graph:
    steps:
      length:
        x: 43
        y: 194
      length_1:
        x: 30
        y: 372
