namespace: f
flow:
  name: f
  workflow:
    - g:
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
        x: 270
        y: 192
