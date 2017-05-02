namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 370
        y: 182
        navigate:
          e2f5f283-3f4f-977f-438b-c2a38170c044:
            targetId: efb2a5f0-d600-3067-43a2-d58071a993ce
            port: SUCCESS
    results:
      SUCCESS:
        efb2a5f0-d600-3067-43a2-d58071a993ce:
          x: 130
          y: 202
