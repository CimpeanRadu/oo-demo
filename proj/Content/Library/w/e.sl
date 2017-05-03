namespace: w
flow:
  name: e
  workflow:
    - e:
        do:
          w.e: []
        navigate: []
    - w:
        do:
          w.w: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      e:
        x: 36
        y: 116
      w:
        x: 0
        y: 251
