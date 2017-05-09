namespace: folder
flow:
  name: flow
  workflow:
    - flow:
        do:
          folder.flow: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      flow:
        x: 59
        y: 153
        navigate:
          2752d3c5-955d-c5fb-2bdf-7d6f48bb1bf4:
            targetId: 8d00dc13-df03-1f8f-8765-1ced2fcd64be
            port: SUCCESS
    results:
      SUCCESS:
        8d00dc13-df03-1f8f-8765-1ced2fcd64be:
          x: 19
          y: 282
