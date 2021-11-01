#######################################
# MANAGED BY SALT DO NOT EDIT BY HAND #
#######################################

[general]
prefix_id: {{ envioller.config.general.prefix_id }}
client_id: {{ envioller.config.general.client_id }}
building_id: {{ envioller.config.general.building_id }}
timezone: {{ envioller.config.general.timezone }}
gw_local_id: {{ envioller.config.general.gw_local_id }}
minion_id: {{ grains['id'] }}
poll_interval_in_seconds: 60
hispoints_in_mqtt_msg: 1000

[mqtt]
host: {{ mqtt.host }}
port: {{ mqtt.port }}
username: {{ mqtt.username }}
password: {{ mqtt.password }}
keepalive: {{ mqtt.keepalive }}
certificate: {{ mqtt.ca_cert }}

[protocol-bacnet]
PollingStrategy: PARALLEL

[protocol-trend]
PollingStrategy: PARALLEL

# filter LANs from protocol specific list of LANS (True/False)
filter_list_LAN: False

# filter Outstations from protocol specific list of Outstations available on LANs (True/False)
filter_list_OS: False

# multi points chunk size (min 1 and max 12)
datapoints_chunk_size: 10

# polling - TCP socket timeout and number of retries before we issue Timeout exception (timeout in seconds) min=1, max=15
multi_timeout: 3
# min=1, max=5
multi_retries: 1

# polling - TCP socket timeout and number of retries before we issue Timeout exception when doing 1-by-1 polling after failed polling on multiple points  (timeout in seconds) min=1, max=15
single_timeout: 1.5
# min=1, max=5
single_retries: 2

# enable or disable controls/writing (True/False)
enable_writing: False

# writing - TCP socket timeout and number of retries before we issue Timeout exception min=1, max=15
writing_timeout: 3
# min=1, max=5
writing_retries: 3

# ping outstation to check if points can be reached to avid acumulated timeouts if OS is down
ping_OS_before_polling: False

# ping outstation to check if points can be reached to avid acumulated timeouts if OS is down, retry between 1 and 10 times repeated each 500ms
max_ping_os_before_polling_retries: 10

# scanning - TCP socket timeout and number of retries before we issue Timeout exception min=1, max=180
scanning_timeout: 1.5
# min=1, max=10
scanning_retries: 2

# guess lans scanning - TCP socket timeout and number of retries before we issue Timeout exception min=1, max=180
guess_lans_scanning_timeout: 30
# min=1, max=60
guess_lans_scanning_retries: 10
