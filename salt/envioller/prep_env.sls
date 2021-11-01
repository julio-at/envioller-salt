{%- import_yaml "defaults.yaml" as defaults %}

envioller_create_group:
  group.present:
    - name: {{ defaults.common.app_user }}
    - gid: 3999

envioller_create_user:
  user.present:
    - name: {{ defaults.common.app_user }}
    - home: /home/{{ defaults.common.app_user }}
    - shell: /bin/bash
    - uid: 3999
    - groups:
      - {{ defaults.common.app_user }}

envioller_install_dir:
  file.directory:
    - names:
      - /home/{{ defaults.common.app_user }}/logs
    - user: {{ defaults.common.app_user }}
    - group: {{ defaults.common.app_user }}
    - dir_mode: 755
    - makedirs: True

envioller_etc_dir:
  file.directory:
    - name: /etc/envio/envioller
    - user: debian
    - group: debian
    - makedirs: True
