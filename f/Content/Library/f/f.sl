namespace: f
flow:
  name: f
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
        x: 20
        y: 128
