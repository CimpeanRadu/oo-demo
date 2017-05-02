namespace: g
flow:
  name: f
  workflow:
    - f:
        do:
          g.f: []
        navigate: []
    - f_1:
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
      f_1:
        x: 142
        y: 285
