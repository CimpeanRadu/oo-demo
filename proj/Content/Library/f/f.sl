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
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 100
        y: 159
    results:
      SUCCESS:
        9a81f11e-f189-8ff6-016d-118d6fd919da:
          x: 129
          y: 74
