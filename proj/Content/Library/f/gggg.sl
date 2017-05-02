namespace: f
flow:
  name: gggg
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
    - g_1:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 150
        y: 146
      g_1:
        x: -29
        y: 126
