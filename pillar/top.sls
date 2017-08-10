base:
  '*':
    - core
  'os_family:debian':
    - match: grain
    - ssh_key

webserver:
  '*minion':
    - webserver_data
