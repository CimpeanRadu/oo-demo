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
        x: 87
        y: 132
    results:
      SUCCESS:
        efb2a5f0-d600-3067-43a2-d58071a993ce:
          x: 100
          y: 190
      FAILURE:
        7abafcc6-7b92-04fa-dad4-04976431b424:
          x: 100
          y: 98
