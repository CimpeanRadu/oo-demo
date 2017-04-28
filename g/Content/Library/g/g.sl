namespace: g
flow:
  name: g
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length:
            - origin_string: qweqweqwe
        navigate: []
  results: []
extensions:
  graph:
    steps:
      length:
        x: 22
        y: 94
