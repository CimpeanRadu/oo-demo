namespace: f
flow:
  name: f
  workflow:
    - g:
        do:
          f.g: []
        navigate: []
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      g:
        x: 22
        y: 174
    results:
      SUCCESS:
        6bbbf820-f6d4-5971-775f-40071448b243:
          x: 75
          y: 61
