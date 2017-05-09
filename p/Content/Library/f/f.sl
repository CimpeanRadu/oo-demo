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
        x: 39
        y: 239
    results:
      FAILURE:
        1b166f1b-5897-2c13-2afc-a3500fa986e9:
          x: 36
          y: 71
