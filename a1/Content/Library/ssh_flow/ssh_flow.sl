namespace: ssh_flow
flow:
  name: ssh_flow
  inputs:
    - host
    - port
    - command
    - username
    - password
  workflow:
    - ssh_flow:
        do:
          io.cloudslang.base.ssh.ssh_flow:
            - host: '${host}'
            - port: '${port}'
            - command: '${command}'
            - username: '${username}'
            - password:
                value: '${password}'
                sensitive: true
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ssh_flow:
        x: 100
        y: 150
        navigate:
          ccbd54e9-b609-84a9-124b-f5ae9b00f9e2:
            targetId: a841ff97-0693-8d13-4ed4-b462e0695afa
            port: SUCCESS
    results:
      SUCCESS:
        a841ff97-0693-8d13-4ed4-b462e0695afa:
          x: 400
          y: 150
