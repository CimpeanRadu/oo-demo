namespace: f
flow:
  name: f
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 100
        y: 150
        navigate:
          adbf6223-36e7-620c-f6f9-0b5a38d41b7a:
            targetId: eea7273b-e176-1cab-1208-8d6ef1712d4b
            port: SUCCESS
    results:
      SUCCESS:
        eea7273b-e176-1cab-1208-8d6ef1712d4b:
          x: 400
          y: 150
