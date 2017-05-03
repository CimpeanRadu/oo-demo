namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - CUSTOM: CUSTOM
  results:
    - CUSTOM
extensions:
  graph:
    steps:
      f:
        x: 16
        y: 97
        navigate:
          459bdd73-2772-89df-01ba-d3075e446d74:
            targetId: 3f34b0ba-c248-a0cf-5ffe-e7f69d5aa362
            port: CUSTOM
    results:
      CUSTOM:
        3f34b0ba-c248-a0cf-5ffe-e7f69d5aa362:
          x: 15
          y: 192
