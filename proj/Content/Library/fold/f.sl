namespace: fold
flow:
  name: f
  workflow:
    - length:
        do:
          io.cloudslang.base.lists.length: []
        navigate:
          - FAILURE: on_failure
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
        x: 133
        y: 153
      get_time:
        x: 107
        y: 363
