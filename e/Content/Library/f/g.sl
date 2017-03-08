namespace: f
flow:
  name: g
  workflow:
    - g:
        do:
          f.g: []
        navigate: []
  results:
    - CUSTOM
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 97
        y: 134
    results:
      CUSTOM:
        8ab23af1-a6e2-2383-e9ca-4d0b9a74b36f:
          x: 274
          y: 337
        0f85a539-bbc5-c9b0-3e6f-148eaad5993d:
          x: 177
          y: 26
      FAILURE:
        9f8ea8a0-83ff-ef40-c803-040acc6a53c5:
          x: 147
          y: 75
