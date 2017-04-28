namespace: f
flow:
  name: f
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
        x: 269
        y: 222
