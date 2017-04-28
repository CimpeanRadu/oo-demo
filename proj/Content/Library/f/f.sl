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
    - f_2:
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
        x: 168
        y: 183
      f_1:
        x: 216
        y: 369
      f_2:
        x: 57
        y: 347
