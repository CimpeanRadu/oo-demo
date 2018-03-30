namespace: io.cloudslang.samples
flow:
  name: check_file_for_cps
  inputs:
    - file_path: /opt/cps.txt
    - foundCPs:
        default: ''
        required: false
  workflow:
    - get_cps:
        do:
          io.cloudslang.samples.get_cps: []
        publish:
          - deployed_cps
        navigate:
          - FAILURE: on_failure
          - SUCCESS: read_from_file
    - read_from_file:
        do:
          io.cloudslang.base.filesystem.read_from_file:
            - file_path: '${file_path}'
        publish:
          - readCP: '${read_text}'
        navigate:
          - SUCCESS: string_occurrence_counter
          - FAILURE: on_failure
    - string_occurrence_counter:
        loop:
          for: cpName in deployed_cps
          do:
            io.cloudslang.base.strings.string_occurrence_counter:
              - string_in_which_to_search: '${readCP}'
              - string_to_find: '${cpName}'
              - foundCPs: '${foundCPs}'
              - cpName: '${cpName}'
          break: []
          publish:
            - foundCPs: "${''.join(c for c in cpName if return_result > 0) + \", \" + foundCPs}"
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - cpsOnFile: '${foundCPs}'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      get_cps:
        x: 100
        y: 150
      read_from_file:
        x: 400
        y: 150
      string_occurrence_counter:
        x: 700
        y: 150
        navigate:
          3c4b57d7-9c6d-ca8a-16d7-baddbae7f75b:
            targetId: 1836b3c2-3d21-8c31-543f-0f1c2a1c1eb0
            port: SUCCESS
    results:
      SUCCESS:
        1836b3c2-3d21-8c31-543f-0f1c2a1c1eb0:
          x: 1000
          y: 150
