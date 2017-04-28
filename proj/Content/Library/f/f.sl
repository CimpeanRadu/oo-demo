namespace: f
flow:
  name: f
  workflow:
    - g:
        do:
          f.g: []
        navigate: []
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 80
        y: 178
    results:
      SUCCESS:
        20f21397-0ab2-3ed3-0408-2e37d748ab3c:
          x: 46
          y: 60
      FAILURE:
        af9b694b-b33b-a538-063f-7a5a2f9b2d98:
          x: 219
          y: 231
