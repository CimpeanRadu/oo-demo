namespace: f
flow:
  name: g
  workflow:
    - length:
        do:
          io.cloudslang.base.lists.length: []
        navigate:
          - SUCCESS: f
          - FAILURE: on_failure
    - f:
        do:
          f.f: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 1
        y: 108
      f:
        x: 243
        y: 137
        navigate:
          1307dc1d-6906-31a9-e169-adef46a37842:
            targetId: 9473dba0-f414-d0c8-c0a0-ff8a6ef0e68c
            port: SUCCESS
    results:
      SUCCESS:
        9473dba0-f414-d0c8-c0a0-ff8a6ef0e68c:
          x: 252
          y: 246
