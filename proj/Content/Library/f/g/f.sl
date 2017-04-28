namespace: f.g
flow:
  name: f
  workflow:
    - f:
        do:
          f.g.f: []
        navigate: []
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 85
        y: 164
    results:
      SUCCESS:
        6df717f4-aeac-b25d-9dfe-5d1bae27194a:
          x: 271
          y: 183
