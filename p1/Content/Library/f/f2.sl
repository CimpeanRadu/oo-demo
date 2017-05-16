namespace: f
flow:
  name: f2
  workflow:
    - qq:
        do:
          f.f2: []
        navigate: []
    - rr:
        do:
          f.f2: []
        navigate: []
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      qq:
        x: 37
        y: 201
      rr:
        x: 148
        y: 336
    results:
      SUCCESS:
        b8b8ee06-d40d-450e-1324-e47b13b8291d:
          x: 210
          y: 172
