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
        x: 100
        y: 150
        navigate:
          056027fe-0d05-759b-4585-6afe271928ff:
            targetId: 4868d9eb-329c-0814-18c6-d488bb4f756b
            port: SUCCESS
    results:
      SUCCESS:
        4868d9eb-329c-0814-18c6-d488bb4f756b:
          x: 400
          y: 150
