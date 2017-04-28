namespace: f
flow:
  name: f
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      length:
        x: 64
        y: 65
