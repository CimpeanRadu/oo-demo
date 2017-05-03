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
        x: 62
        y: 130
      w:
        x: 0
        y: 251
