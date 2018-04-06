########################################################################################################################
#!!
#! @description: asdfgh
#!!#
########################################################################################################################
namespace: folder
flow:
  name: flow
  inputs:
    - flow_input_0
    - flow_input_1
    - flow_input_2
    - flow_input_3
    - flow_input_4
  workflow:
    - flow:
        do:
          folder.flow: []
        navigate:
          - FAILURE: on_failure
    - generate_email:
        do:
          oo_samples.content.library.io.cloudslang.samples.generate_email: []
        navigate:
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      flow:
        x: 173
        y: 85
      generate_email:
        x: 249
        y: 227
    results:
      SUCCESS:
        c812eaa1-658f-33ae-3cf3-a0eb0d912cdc:
          x: 520
          y: 196
      FAILURE:
        035534f0-e7c5-c127-262c-de87405f74c9:
          x: 112
          y: 192
