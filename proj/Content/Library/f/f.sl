namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate: []
  results:
    - FAILURE
extensions:
  graph:
    steps:
      f:
        x: 184
        y: 145
    results:
      FAILURE:
        8887268b-19fb-57bd-459c-3533cda44636:
          x: 68
          y: 360
