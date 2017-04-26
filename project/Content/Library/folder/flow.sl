namespace: folder
flow:
  name: flow12345
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length:
            - origin_string: "${get_sp('io.cloudslang.base.http.trust_keystore')}"
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 100
        y: 150
        navigate:
          07906006-9118-e8a7-3834-e6396c4aea39:
            targetId: a44eb788-d425-9e75-aa2f-8d91041a5f61
            port: SUCCESS
    results:
      SUCCESS:
        a44eb788-d425-9e75-aa2f-8d91041a5f61:
          x: 400
          y: 150
