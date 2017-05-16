namespace: Folder
flow:
  name: Flow2
  workflow:
    - Flow2:
        do:
          Folder.Flow2:
            - input_0: null
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      Flow2:
        x: 100
        y: 150
        navigate:
          be16622b-9f3e-8e23-937a-df026e0f50dd:
            targetId: 162384f8-58cc-b768-d10d-b2304dd4bbd7
            port: SUCCESS
    results:
      SUCCESS:
        162384f8-58cc-b768-d10d-b2304dd4bbd7:
          x: 400
          y: 150
