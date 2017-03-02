namespace: folder
flow:
  name: flow
  workflow:
    - flow:
        do:
          folder.flow: []
        navigate: []
  results:
    - FAILURE
extensions:
  graph:
    steps:
      flow:
        x: 110
        y: 116
    results:
      FAILURE:
        7c141e0c-5164-0daa-e8f1-e30f26222914:
          x: 26
          y: 149
