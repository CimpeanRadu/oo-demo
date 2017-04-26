namespace: g
flow:
  name: whyIsThisWorking
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length:
            - origin_string: qweqweqwe
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
          ea3dc350-77f5-4b9e-caf1-7b8fbd1bd580:
            targetId: 1d8f8ffd-96ea-8010-919f-6d1dde74953f
            port: SUCCESS
    results:
      SUCCESS:
        1d8f8ffd-96ea-8010-919f-6d1dde74953f:
          x: 400
          y: 150
