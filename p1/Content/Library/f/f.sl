namespace: f
flow:
  name: f
  inputs:
    - flow_input_0
    - flow_input_1
  workflow:
    - f:
        do:
          f.f: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      f:
        x: 34
        y: 126
