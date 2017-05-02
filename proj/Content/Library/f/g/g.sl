namespace: f.g
flow:
  name: g
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
    - g_1:
        do:
          f.g.g: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 93
        y: 184
      g_1:
        x: 127
        y: 300
