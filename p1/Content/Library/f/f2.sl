namespace: f
flow:
  name: f2
  workflow:
    - qq:
        do:
          f.f2:
            - input_0: null
            - input_1: null
        navigate:
          - SUCCESS: rr
    - rr:
        do:
          f.f2: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      qq:
        x: 100
        y: 150
      rr:
        x: 400
        y: 150
        navigate:
          d5502511-8086-6431-c314-476f39ecd7fc:
            targetId: 26eabe27-0b4c-f54d-fe4e-5a23a206df76
            port: SUCCESS
    results:
      SUCCESS:
        26eabe27-0b4c-f54d-fe4e-5a23a206df76:
          x: 700
          y: 150
