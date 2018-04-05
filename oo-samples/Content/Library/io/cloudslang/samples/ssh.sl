namespace: io.cloudslang.samples
flow:
  name: ssh
  workflow:
    - SSH_Command:
        do_external:
          0b066b79-d65c-4da9-8ed4-edf50f378950:
            - host: myd-vm09115.hpeswlab.net
            - username: root
            - password:
                value: Xy6stqZ
                sensitive: true
            - command: ls -l
        navigate:
          - success: SUCCESS
          - failure: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      SSH_Command:
        x: 100
        y: 150
        navigate:
          086cfe8f-5501-3df3-aaf6-73ad8f4db632:
            targetId: f3543abd-632f-c430-98e3-5678be4cbd62
            port: success
    results:
      SUCCESS:
        f3543abd-632f-c430-98e3-5678be4cbd62:
          x: 400
          y: 150
