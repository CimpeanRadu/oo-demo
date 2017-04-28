namespace: f.g
flow:
  name: g
  workflow:
    - f:
        do:
          f.g.f: []
        navigate: []
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
      f:
        x: 373
        y: 185
      g:
        x: 116
        y: 225
    results:
      FAILURE:
        ad080a2b-f1d6-5c4f-9c8f-81d3ca735fb3:
          x: 123
          y: 100
