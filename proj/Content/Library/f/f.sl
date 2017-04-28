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
        x: 91
        y: 172
        navigate:
          0f6316e2-fc8f-4c1a-1de0-46bcd9c53541:
            targetId: 20f21397-0ab2-3ed3-0408-2e37d748ab3c
            port: SUCCESS
    results:
      SUCCESS:
        20f21397-0ab2-3ed3-0408-2e37d748ab3c:
          x: 46
          y: 60
