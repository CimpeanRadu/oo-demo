namespace: f.g
flow:
  name: g
  workflow:
    - g:
        do:
          f.g.g: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      g:
        x: 100
        y: 150
        navigate:
          6c7fdd86-091f-bbbf-f01e-5c44adc9a154:
            targetId: e19dcbbd-2d25-a6f7-9197-acfc41a92721
            port: SUCCESS
    results:
      SUCCESS:
        e19dcbbd-2d25-a6f7-9197-acfc41a92721:
          x: 400
          y: 150
