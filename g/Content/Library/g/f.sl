namespace: g
flow:
  name: f
  workflow:
    - f:
        do:
          g.f: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      f:
        x: 71
        y: 233
