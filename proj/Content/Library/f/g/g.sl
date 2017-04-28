namespace: f.g
flow:
  name: g
  workflow:
    - g:
        do:
          f.g.g: []
        navigate: []
    - f:
        do:
          f.f: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      g:
        x: 67
        y: 158
      f:
        x: 242
        y: 121
