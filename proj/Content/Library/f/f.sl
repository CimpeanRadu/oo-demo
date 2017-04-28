namespace: f
flow:
  name: f
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - SUCCESS: FAILURE
  results:
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 78
        y: 79
        navigate:
          15b36d8c-40f1-7a7e-bdfa-7a0a15347d6a:
            targetId: e762e495-59fa-61e6-80b6-74a30bf5668f
            port: SUCCESS
    results:
      FAILURE:
        e762e495-59fa-61e6-80b6-74a30bf5668f:
          x: 83
          y: 203
