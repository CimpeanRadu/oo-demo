namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate: []
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 18
        y: 222
    results:
      SUCCESS:
        6bbbf820-f6d4-5971-775f-40071448b243:
          x: 75
          y: 61
