include:
  - myuser.user

install_git:
  pkg.installed:
    - name: git

clone_dotfiles:
  git.latest:
    - name: git://github.com/basepi/dotfiles.git
    - rev: master
    - target: /home/hexpizza/dotfiles
    - user: hexpizza
    - submodules: True
    - require:
      - pkg: install_git
      - user: add_user_hexpizza

install_dotfiles_in_changed:
  cmd.run:
    - name: 'python install.py -y'
    - cwd: '/home/hexpizza/dotfiles'
    - user: hexpizza
    - onchanges:
      - git: clone_dotfiles
