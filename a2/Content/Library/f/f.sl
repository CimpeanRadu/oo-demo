namespace: f
flow:
  name: f
  inputs:
    - flow_input_0: '${eee}'
    - flow_input_1: qwe
    - flow_input_2: '${flow_input_0}'
    - flow_input_3: ffff
  workflow:
    - ssh_flow:
        do:
          ssh_flow.ssh_flow:
            - host: '${flow_input_0}'
            - port: '${flow_input_1}'
            - command: '${flow_input_2}'
            - username: '${flow_input_3}'
            - password: '${flow_input_3}'
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
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
          ed4cf47d-2c93-3ad1-6e22-55011f30c2dc:
            targetId: c14f5e3e-bddb-23e8-b42a-5a454ad80fa7
            port: SUCCESS
    results:
      SUCCESS:
        c14f5e3e-bddb-23e8-b42a-5a454ad80fa7:
          x: 400
          y: 150
