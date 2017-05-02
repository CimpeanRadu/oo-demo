namespace: f.g
flow:
  name: g
  workflow:
    - g:
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
        x: 171
        y: 182
