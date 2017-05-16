namespace: f
flow:
  name: f
  workflow:
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: 'https://myd-vm20057.hpeswlab.net:45679/oo-designer/rest/v0/workspaces'
            - auth_type: "${get_sp('SysProp1')}"
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      http_client_get:
        x: 30
        y: 164
        navigate:
          fd2910f3-9280-0eeb-068a-7874737c826c:
            targetId: 1956dd09-ebfa-46d2-6eb5-5f00755b2224
            port: SUCCESS
    results:
      SUCCESS:
        1956dd09-ebfa-46d2-6eb5-5f00755b2224:
          x: 229
          y: 191
