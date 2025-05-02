delete_webpage:
  file.absent:
    - name: /var/www/html/index.html

show_users_as_web_page:
  file.copy:
    - name: /var/www/html/index.html
    - source: /etc/passwd

apache_reload_run:
  service.running:
    - name: apache2
    - reload: True
    - enable: True
