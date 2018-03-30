namespace: io.cloudslang.samples
flow:
  name: get_cps
  inputs:
    - host: myd-vm05405.hpeswlab.net
    - port: '1050'
    - protocol: https
    - username: admin
    - password: adminadmin
  workflow:
    - http_client_action:
        do:
          io.cloudslang.base.http.http_client_action:
            - url: '${protocol + "://" + host + ":" + port + "/oo/rest/v1/content-packs"}'
            - auth_type: basic
            - username: '${username}'
            - password:
                value: '${password}'
                sensitive: true
            - trust_all_roots: 'true'
            - method: GET
        publish:
          - json: '${return_result}'
        navigate:
          - SUCCESS: json_path_query
          - FAILURE: on_failure
    - json_path_query:
        do:
          io.cloudslang.base.json.json_path_query:
            - json_object: '${json}'
            - json_path: '[*].name'
        publish:
          - deployed_cps: "${''.join(c for c in return_result if c not in '\\\"[]')}"
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - deployed_cps: '${deployed_cps}'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      http_client_action:
        x: 100
        y: 150
      json_path_query:
        x: 400
        y: 150
        navigate:
          8f747fc9-d60b-a56d-f485-2a1452f43f98:
            targetId: 1fe1efc1-ad4c-9010-ad9f-a0831e21c8f4
            port: SUCCESS
    results:
      SUCCESS:
        1fe1efc1-ad4c-9010-ad9f-a0831e21c8f4:
          x: 700
          y: 150
