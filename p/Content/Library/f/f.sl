namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 46
        y: 112
        navigate:
          8c7bf79c-7ada-0403-9798-57012f699a80:
            targetId: 6c4a57ec-9a7d-2e99-eebd-826344a61f49
            port: SUCCESS
    results:
      SUCCESS:
        6c4a57ec-9a7d-2e99-eebd-826344a61f49:
          x: 79
          y: 305
