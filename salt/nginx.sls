make sure nginx is running:
  service.running:
    - name: nginx
    - enable: True

install_nginx:
  pkg.installed:
    - name: nginx
    - require_in: make sure nginx is running
