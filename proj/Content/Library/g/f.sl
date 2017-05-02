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
        x: 244
        y: 172
