install_zsh:
  pkg.installed:
    - name: zsh

add_user_hexpizza:
  user.present:
    - name: hexpizza
    - shell: /bin/zsh
    - require:
      - pkg: install_zsh
