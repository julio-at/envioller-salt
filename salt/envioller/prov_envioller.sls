{%- import_yaml "defaults.yaml" as defaults %}

envioller_config_file:
  file.managed:
    - name: /etc/envio/envioller/local.cfg
    - source: salt://files/envioller/envioller-local.cfg.tpl
    - user: debian
    - group: debian
    - mode: 644
    - template: jinja
    - context:
      envioller: {{ defaults.envioller }}
      mqtt: {{ defaults.mqtt }}
