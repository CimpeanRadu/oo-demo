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
        x: 12
        y: 117
        navigate:
          613b7691-92c8-bb2a-eb64-f561084d3d33:
            targetId: 0beb7fef-f381-3c6a-fb19-cd422d62f4a4
            port: SUCCESS
    results:
      SUCCESS:
        0beb7fef-f381-3c6a-fb19-cd422d62f4a4:
          x: 5
          y: 268
