namespace: g
flow:
  name: g
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length:
            - origin_string: qweqweqwe
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 47
        y: 336
        navigate:
          d95403fd-0530-759d-8369-eec7d3f9a8e5:
            targetId: 910b5636-19de-628b-a1ad-468b1823d7c3
            port: SUCCESS
    results:
      SUCCESS:
        910b5636-19de-628b-a1ad-468b1823d7c3:
          x: 400
          y: 150
