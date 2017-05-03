namespace: w
flow:
  name: w
  workflow:
    - w:
        do:
          w.w: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      w:
        x: 12
        y: 146
        navigate:
          bf11603b-e9d2-11a6-4b60-beacca423dff:
            targetId: 490d1db8-fd17-bf4c-4764-3cafcfa65a32
            port: SUCCESS
    results:
      SUCCESS:
        490d1db8-fd17-bf4c-4764-3cafcfa65a32:
          x: 10
          y: 334
