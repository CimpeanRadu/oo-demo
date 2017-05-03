namespace: w
flow:
  name: w
  workflow:
    - w:
        do:
          w.w: []
        navigate:
          - FAILURE: FAILURE
  results:
    - FAILURE
extensions:
  graph:
    steps:
      w:
        x: 57
        y: 117
        navigate:
          bb8564e8-6795-5180-5240-1f412d0cb714:
            targetId: a40d6c6b-4109-277b-3f06-2f53ef1788b7
            port: FAILURE
    results:
      FAILURE:
        a40d6c6b-4109-277b-3f06-2f53ef1788b7:
          x: 185
          y: 131
