namespace: f
flow:
  name: fl
  workflow:
    - fl:
        do:
          f.fl: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      fl:
        x: 100
        y: 150
        navigate:
          14ef1761-1e84-b2b8-36e7-4841187a2527:
            targetId: 2a5ce3c2-1c53-fdb9-27d3-588811f4f76f
            port: SUCCESS
    results:
      SUCCESS:
        2a5ce3c2-1c53-fdb9-27d3-588811f4f76f:
          x: 400
          y: 150
