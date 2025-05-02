get_users:
  cmd.run:
    - name: echo "$(getent passwd)"
    - creates: /tmp/users.txt

get_groups:
  cmd.run:
    - name: echo "$(getent group)"
    - creates: /tmp/groups.txt
