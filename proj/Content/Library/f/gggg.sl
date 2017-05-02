namespace: f
flow:
  name: gggg
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: g_1
    - g_1:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: g
  results:
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 150
        y: 146
      g_1:
        x: 192
        y: 301
