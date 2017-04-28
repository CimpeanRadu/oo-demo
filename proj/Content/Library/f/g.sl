namespace: f
flow:
  name: g
  workflow:
    - length:
        do:
          io.cloudslang.base.lists.length: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      length:
        x: 219
        y: 56
