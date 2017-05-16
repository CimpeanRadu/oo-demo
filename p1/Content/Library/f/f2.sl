namespace: f
flow:
  name: f2
  workflow:
    - Step2:
        do:
          f.f2: []
        navigate:
          - SUCCESS: '111'
    - '111':
        do:
          f.f2: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      '111':
        x: 148
        y: 336
        navigate:
          47ea2959-61b2-6a1f-64bb-513c264bb097:
            targetId: b8b8ee06-d40d-450e-1324-e47b13b8291d
            port: SUCCESS
      Step2:
        x: 37
        y: 201
    results:
      SUCCESS:
        b8b8ee06-d40d-450e-1324-e47b13b8291d:
          x: 210
          y: 172
