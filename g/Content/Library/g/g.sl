namespace: g
flow:
  name: g
  workflow:
    - g:
        do:
          g.g: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      g:
        x: 100
        y: 150
        navigate:
          f73a3356-80b3-368a-1713-07cda43db2e7:
            targetId: 97d09ca5-a471-6318-be25-1dc3e6514ac4
            port: SUCCESS
    results:
      SUCCESS:
        97d09ca5-a471-6318-be25-1dc3e6514ac4:
          x: 400
          y: 150
