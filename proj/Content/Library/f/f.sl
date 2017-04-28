namespace: f
flow:
  name: f
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length: []
        navigate: []
    - get_time:
        do:
          io.cloudslang.base.datetime.get_time: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      length:
        x: 18
        y: 165
      get_time:
        x: 24
        y: 284
    results:
      FAILURE:
        295682d2-0fcf-e479-3641-23dd8aa158d7:
          x: 142
          y: 152
