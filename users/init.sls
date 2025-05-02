apache_installed:
  pkg.installed:
    - name: apache2

overwrite_mainpage:
  file.managed:
    - name: /var/www/html/index.html
    - contents: 'This is the website'

apache_is_running:
  service.running:
    - name: apache2
    - reload: True
    - enable: True

basic_group:
  group.present:
    - name: basic
test_group:
  group.present:
    - name: test
gametest_group:
  group.present:
    - name: gametest
admin_group:
  group.present:
    - name: admin

Aministrator:
  user.present:
    - fullname: Adam Admin
    - workphone: 050555663
    - home: /home/admin
    - groups:
      - basic
      - admin
      - www-data

Testuser:
  user.present:
    - fullname: Test User
    - workphone: 050555664
    - home: /home/testing
    - groups:
      - basic
      - gametest
      - test
      - www-data

marketing_group:
  group.present:
    - name: marketing

Marketing:
  user.present:
    - fullname: Molly Marketer
    - workphone: 050555665
    - home: /home/marketing
    - groups:
      - marketing
      - basic

production_group:
  group.present:
    - name: production

Production:
  user.present:
    - fullname: Peter Productive
    - workphone: 050555666
    - home: /home/production
    - other:
    - groups:
      - production
      - basic
Production2:
  user.present:
    - fullname: Sam Product
    - workphone: 050555667
    - home: /home/production
    - other: Production manager
    - groups:
      - production
      - basic
      - admin
