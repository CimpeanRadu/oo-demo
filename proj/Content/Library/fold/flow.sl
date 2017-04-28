namespace: fold
flow:
  name: flow
  workflow:
    - flow:
        do:
          fold.flow: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      flow:
        x: 160
        y: 145
        navigate:
          c9ad869d-83e6-8380-b12a-e9fcd966a834:
            targetId: 5dea5e79-ed30-4d18-566c-c140c0d5e26c
            port: SUCCESS
    results:
      SUCCESS:
        5dea5e79-ed30-4d18-566c-c140c0d5e26c:
          x: 291
          y: 134
