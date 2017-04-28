namespace: fold
flow:
  name: flow
  workflow:
    - flow:
        do:
          fold.flow: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      flow:
        x: 64
        y: 179
        navigate:
          7ec69ec9-800e-a9f1-544c-e4450e105b86:
            targetId: ad3c5f3e-cfd4-0939-d138-7bbaf7832154
            port: SUCCESS
    results:
      SUCCESS:
        ad3c5f3e-cfd4-0939-d138-7bbaf7832154:
          x: 254
          y: 133
