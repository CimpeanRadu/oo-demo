namespace: w
flow:
  name: w
  workflow:
    - w:
        do:
          w.w: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      w:
        x: 34
        y: 246
    results:
      FAILURE:
        034ace30-46c9-83d5-6ea9-de798ea34f09:
          x: 25
          y: 101
