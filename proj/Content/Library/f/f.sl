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
    - FAILURE
extensions:
  graph:
    steps:
      f:
        x: 23.4920654296875
        y: 242.5396728515625
    results:
      FAILURE:
        41caf71f-1f72-e92a-137b-9b67c1522e96:
          x: 175.87301635742188
          y: 245.71429443359375
