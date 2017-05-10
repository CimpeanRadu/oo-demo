namespace: folder
flow:
  name: flow
  workflow:
    - flow:
        do:
          folder.flow: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      flow:
        x: 19
        y: 100
        navigate:
          e6edf92b-3013-d606-0c33-e2fa0ebb66e3:
            targetId: 675d3d3b-42f0-6fbf-d9f5-2befd1a29d58
            port: SUCCESS
    results:
      SUCCESS:
        675d3d3b-42f0-6fbf-d9f5-2befd1a29d58:
          x: 14
          y: 257
