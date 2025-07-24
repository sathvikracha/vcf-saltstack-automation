install_epel:
  pkg.installed:
    - name: epel-release

install_tools:
  pkg.installed:
    - pkgs:
      - firewalld
      - audit
      - fail2ban

enable_firewalld:
  service.running:
    - name: firewalld
    - enable: true

start_fail2ban:
  service.running:
    - name: fail2ban
    - enable: true

auditd_running:
  service.running:
    - name: auditd
    - enable: true
