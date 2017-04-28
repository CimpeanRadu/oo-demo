namespace: f.g
flow:
  name: g
  workflow:
    - f:
        do:
          f.f: []
        navigate: []
    - g:
        do:
          f.g.g: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      f:
        x: 164
        y: 87
      g:
        x: 45
        y: 164
