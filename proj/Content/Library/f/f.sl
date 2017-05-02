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
        x: 30
        y: 368
    results:
      SUCCESS:
        0cfe8531-c7b6-c59e-5a42-5857f17d796c:
          x: 114
          y: 156
      FAILURE:
        2e6b3d8e-56d7-d5b8-24e8-dcaeeaa2c887:
          x: 120
          y: 216
