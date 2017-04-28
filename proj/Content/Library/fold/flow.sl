namespace: fold
flow:
  name: flow
  workflow:
    - length:
        do:
          io.cloudslang.base.lists.length: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 65
        y: 136
        navigate:
          ead6e5ee-410f-6b1f-7621-c0d99970ab53:
            targetId: 92559fc2-b572-7fd3-4fa3-207f5fb1d750
            port: SUCCESS
            vertices:
              - x: 138
                y: 213
    results:
      SUCCESS:
        92559fc2-b572-7fd3-4fa3-207f5fb1d750:
          x: 91
          y: 333
