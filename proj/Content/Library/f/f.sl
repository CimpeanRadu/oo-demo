namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      f:
        x: 38
        y: 264
    results:
      SUCCESS:
        6bbbf820-f6d4-5971-775f-40071448b243:
          x: 75
          y: 61
      FAILURE:
        e45c4cb7-7a91-5d29-a534-37a06da3c587:
          x: 281
          y: 295
