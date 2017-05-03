namespace: w
flow:
  name: e
  workflow:
    - w:
        do:
          w.w: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      w:
        x: 253
        y: 334
