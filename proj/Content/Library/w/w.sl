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
        x: 64
        y: 271
    results:
      FAILURE:
        a40d6c6b-4109-277b-3f06-2f53ef1788b7:
          x: 185
          y: 131
        788ca7d4-cbe7-036b-a18d-8d26f21ee05a:
          x: 23
          y: 188
