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
        x: 36
        y: 160
      g:
        x: 176
        y: 95
    results:
      FAILURE:
        ad080a2b-f1d6-5c4f-9c8f-81d3ca735fb3:
          x: 110
          y: 274
