namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - FAILURE: on_failure
    - f_1:
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
        x: 10
        y: 308
      f_1:
        x: -26
        y: 203
    results:
      SUCCESS:
        efb2a5f0-d600-3067-43a2-d58071a993ce:
          x: 130
          y: 202
      FAILURE:
        7abafcc6-7b92-04fa-dad4-04976431b424:
          x: -3
          y: 98
