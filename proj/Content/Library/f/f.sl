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
        x: 83
        y: 299
    results:
      FAILURE:
        30d24956-a43c-7c74-e0f6-b2918b8c0be4:
          x: 45
          y: 84
