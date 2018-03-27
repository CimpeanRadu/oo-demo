namespace: io.cloudslang.samples
flow:
  name: sensitive_inputs
  workflow:
    - Sensitive_Inputs:
        do_external:
          1046f8d6-f64c-49a5-ae50-98cae89a8841:
            - username: "${get_sp('username')}"
            - password:
                value: "${get_sp('password')}"
                sensitive: true
        navigate:
          - failure: FAILURE
          - success: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      Sensitive_Inputs:
        x: 100
        y: 250
        navigate:
          cc5ea611-76d4-2522-e619-b21f559e7b33:
            targetId: 10b980eb-c154-8684-2539-978e4e2ad27e
            port: failure
          00a8841a-1eee-4f04-ea75-c10def2091be:
            targetId: 9b098b6b-f554-f944-a958-7c8a99248fee
            port: success
    results:
      FAILURE:
        10b980eb-c154-8684-2539-978e4e2ad27e:
          x: 400
          y: 125
      SUCCESS:
        9b098b6b-f554-f944-a958-7c8a99248fee:
          x: 400
          y: 375
