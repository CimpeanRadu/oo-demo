namespace: Folder
flow:
  name: Flow
  workflow:
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: 'https://myd-vm20057.hpeswlab.net:45679/oo-designer/rest/v0/workspaces'
        publish:
          - response_headers
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
        x: 56
        y: 95
        navigate:
          704f0d2b-8eb0-b4e8-4855-f36c5b42b4bf:
            targetId: 27c737ed-9748-5432-a2bc-7ea87d76a06b
            port: SUCCESS
    results:
      SUCCESS:
        27c737ed-9748-5432-a2bc-7ea87d76a06b:
          x: 283
          y: 99
