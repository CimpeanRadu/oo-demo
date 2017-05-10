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
          abb0795e-5083-1385-e6ea-7b9e2abd9387:
            targetId: f5feb0e2-7d97-4963-a29b-91ed921920ac
            port: SUCCESS
    results:
      SUCCESS:
        f5feb0e2-7d97-4963-a29b-91ed921920ac:
          x: 400
          y: 150
