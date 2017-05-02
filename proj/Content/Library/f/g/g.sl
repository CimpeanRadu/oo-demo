namespace: f.g
flow:
  name: g
  workflow:
    - g:
        do:
          f.g.g: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      g:
        x: 86
        y: 125
