namespace: fo
flow:
  name: fl
  workflow:
    - fl:
        do:
          fo.fl: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      fl:
        x: 100
        y: 150
        navigate:
          31ac4e68-8a0d-ebbd-5982-e635f6e01e94:
            targetId: aa124463-fbc4-68a3-6fb9-9136a3f1e2d7
            port: SUCCESS
    results:
      SUCCESS:
        aa124463-fbc4-68a3-6fb9-9136a3f1e2d7:
          x: 400
          y: 150
