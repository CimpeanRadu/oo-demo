namespace: sd
flow:
  name: main
  workflow:
    - flow:
        do:
          sd.flow:
            - input: asd
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      flow:
        x: 34
        y: 217
        navigate:
          c285357c-e2e3-66e1-366d-943d72d48309:
            targetId: 68a361b6-07a4-c8ff-ae77-e9e2f6b85d73
            port: SUCCESS
    results:
      SUCCESS:
        68a361b6-07a4-c8ff-ae77-e9e2f6b85d73:
          x: 337
          y: 223
