# This Salt state would be triggered by Aria Config after provisioning

system_hardening:
  pkg.installed:
    - pkgs:
      - firewalld
      - fail2ban
      - auditd

firewalld_service:
  service.running:
    - name: firewalld
    - enable: true

fail2ban_service:
  service.running:
    - name: fail2ban
    - enable: true
