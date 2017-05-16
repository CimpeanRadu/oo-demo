namespace: ssh_flow
flow:
  name: ssh_flow
  inputs:
    - host: "${get_sp('io.cloudslang.base.from')}"
    - port
    - command:
        default: "${get_sp('io.cloudslang.base.from')}"
        required: false
    - username: "${get_sp('io.cloudslang.base.hostname')}"
    - password:
        default: "${get_sp('io.cloudslang.base.network.keystore')}"
        required: false
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
        publish:
          - host
          - port
          - command
          - username
          - password
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
