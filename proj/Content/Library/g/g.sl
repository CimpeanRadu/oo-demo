namespace: g
flow:
  name: g
  workflow:
    - g:
        do:
          g.g: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 23
        y: 269
    results:
      FAILURE:
        ff87e46f-368b-8b9f-3c14-33e1ba96b8b4:
          x: 187
          y: 225
