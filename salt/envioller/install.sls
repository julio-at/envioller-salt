{%- import_yaml "defaults.yaml" as defaults %}

{%- set pkgspath = 'salt://files/packages' %}

envioller-dependencies:
  pkg.installed:
    - sources:
      - envioller-dependencies: '{{ pkgspath }}/envioller-dependencies-{{ defaults.envio.versions.dependencies }}.deb'

envioller:
  pkg.installed:
    - sources:
      - envioller:  '{{ pkgspath }}/envioller-{{ defaults.envio.versions.envioller }}.deb'
    - require:
      - envioller-dependencies
