namespace: f
flow:
  name: f2
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
        x: 39
        y: 156
