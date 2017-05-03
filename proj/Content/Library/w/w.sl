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
        x: 142
        y: 374
    results:
      FAILURE:
        a40d6c6b-4109-277b-3f06-2f53ef1788b7:
          x: 157
          y: 164
