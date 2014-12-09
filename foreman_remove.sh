#!/bin/bash
# This script removes foreman and RHEL OSP Installer from a server 
# Tested with RHEL OSP 4 and 5 (RHEL 6 only)
#    - Installer never ran on RHEL 7 with these releases

service httpd stop
service named stop
service xinetd stop
service dhcpd stop
service mysqld stop
service postgresql stop

yum -y remove advancecomp apr apr-util apr-util-ldap audit-libs-python augeas augeas-libs bind boost-system boost-thread ceph-common compat-readline5 dhcp facter foreman foreman-discovery-image foreman-installer foreman-mysql foreman-mysql2 foreman-postgresql foreman-proxy foreman-selinux genisoimage gperftools-libs hiera httpd httpd-tools ipmitool isomd5sum librados2 librbd1 libselinux-python libselinux-ruby libsemanage-python libev libicu libunwind libyaml livecd-tools lm_sensors_libs mod_passenger mod_ssl mtools mysql mysql-server net-snmp-libs OpenIPMI OpenIPMI-libs openstack-foreman-installer openstack-puppet-modules packstack-modules-puppet perl-DBD-MySQL policycoreutils-python postgresql postgresql-libs postgresql-server puppet puppet-server pykickstart python-babel python-backports python-backports-ssl_match_hostname python-ceph python-chardet python-flask python-imgcreate python-jinja2 python-markupsafe python-ordereddict python-requests python-six python-urllib3 python-werkzeug pyxf86config rhel-osp-installer setools-libs setools-libs-python squashfs-tools syslinux syslinux-extlinux syslinux-extlinux-nonlinux syslinux-nonlinux system-config-keyboard system-config-keyboard-base tftp-server v8314-runtime v8314 xinetd yum-plugin-versionlock

yum -y remove ruby ruby193 ruby193-facter ruby193-ruby ruby193-rubygem-actionmailer ruby193-rubygem-actionpack ruby193-rubygem-activemodel ruby193-rubygem-activerecord ruby193-rubygem-activeresource ruby193-rubygem-activesupport ruby193-rubygem-algebrick ruby193-rubygem-ancestry ruby193-rubygem-apipie-params ruby193-rubygem-apipie-rails ruby193-rubygem-arel ruby193-rubygem-audited ruby193-rubygem-audited-activerecord ruby193-rubygem-bigdecimal ruby193-rubygem-bootstrap-sass ruby193-rubygem-builder ruby193-rubygem-bundler ruby193-rubygem-bundler_ext ruby193-rubygem-coffee-rails ruby193-rubygem-coffee-script ruby193-rubygem-coffee-script-source ruby193-rubygem-daemon_controller ruby193-rubygem-daemons ruby193-rubygem-deep_cloneable ruby193-rubygem-deface ruby193-rubygem-diff-lcs ruby193-rubygem-dynflow ruby193-rubygem-erubis ruby193-rubygem-eventmachine ruby193-rubygem-execjs ruby193-rubygem-fast_gettext ruby193-rubygem-foreigner ruby193-rubygem-foreman_discovery ruby193-rubygem-foreman_openstack_simplify ruby193-rubygem-foreman-tasks ruby193-rubygem-ftools ruby193-rubygem-gettext_i18n_rails ruby193-rubygem-gettext_i18n_rails_js ruby193-rubygem-hike ruby193-rubygem-i18n ruby193-rubygem-i18n_data ruby193-rubygem-io-console ruby193-rubygem-journey ruby193-rubygem-jquery-rails ruby193-rubygem-jquery-ui-rails ruby193-rubygem-json ruby193-rubygem-mail ruby193-rubygem-mime-types ruby193-rubygem-minitest ruby193-rubygem-multi_json ruby193-rubygem-mysql ruby193-rubygem-mysql2 ruby193-rubygem-net-http-persistent ruby193-rubygem-net-ldap ruby193-rubygem-nokogiri ruby193-rubygem-oauth ruby193-rubygem-open4 ruby193-rubygem-passenger ruby193-rubygem-passenger-native ruby193-rubygem-passenger-native-libs ruby193-rubygem-pg ruby193-rubygem-polyglot ruby193-rubygem-po_to_json ruby193-rubygem-rabl ruby193-rubygem-rack ruby193-rubygem-rack-cache ruby193-rubygem-rack-protection ruby193-rubygem-rack-ssl ruby193-rubygem-rack-test ruby193-rubygem-rails ruby193-rubygem-railties ruby193-rubygem-rake ruby193-rubygem-rdoc ruby193-rubygem-ref ruby193-rubygem-rest-client ruby193-rubygem-ruby2ruby ruby193-rubygem-ruby_parser ruby193-rubygems ruby193-rubygem-safemode ruby193-rubygem-sass ruby193-rubygem-sass-rails ruby193-rubygem-scoped_search ruby193-rubygem-sexp_processor ruby193-rubygem-sinatra ruby193-rubygem-sprockets ruby193-rubygem-staypuft ruby193-rubygem-therubyracer ruby193-rubygem-thin ruby193-rubygem-thor ruby193-rubygem-tilt ruby193-rubygem-treetop ruby193-rubygem-twitter-bootstrap-rails ruby193-rubygem-tzinfo ruby193-rubygem-uglifier ruby193-rubygem-uuidtools ruby193-rubygem-validates_lengths_from_database ruby193-rubygem-wicked ruby193-rubygem-will_paginate ruby193-ruby-irb ruby193-ruby-libs ruby193-ruby-wrapper ruby193-runtime ruby-augeas rubygem-ansi rubygem-apipie-bindings rubygem-awesome_print rubygem-bundler rubygem-bundler_ext rubygem-clamp rubygem-daemon_controller rubygem-fastercsv rubygem-fastthread rubygem-ffi rubygem-foreman_api rubygem-hashie rubygem-highline rubygem-json rubygem-kafo rubygem-kafo_parsers rubygem-little-plugger rubygem-logging rubygem-mime-types rubygem-multi_json rubygem-oauth rubygem-passenger rubygem-passenger-native rubygem-passenger-native-libs rubygem-powerbar rubygem-rack rubygem-rack-protection rubygem-rake rubygem-rdoc rubygem-rest-client rubygem-rgen rubygem-rkerberos rubygem-rubyipmi rubygems rubygem-sinatra rubygem-thor rubygem-tilt ruby-irb ruby-libs ruby-rdoc ruby-shadow

rm -rf /etc/ceph
rm -f /etc/cron.d/foreman
rm -f /etc/dhcp/dhcpd.conf
rm -f /etc/dhcp/dhcpd.hosts
rm -f /etc/dhcp/dhcpd6.conf
rm -f /etc/extlinux.conf
rm -rf /etc/foreman
rm -rf /etc/foreman-proxy
rm -rf /etc/hiera.yaml
rm -rf /etc/httpd
rm -f /etc/httpd/conf.d/foreman.conf
rm -f /etc/httpd/conf.d/puppet.conf
rm -f /etc/mtools.conf
rm -rf /etc/mysql
rm -rf /etc/named
rm -f /etc/pki/tls/certs/localhost.crt
rm -f /etc/pki/tls/private/localhost.key
rm -f /etc/portreserve/dhcpd
rm -f /etc/portreserve/named
rm -rf /etc/puppet
rm -f /etc/rndc.key
rm -f /etc/sudoers.d/foreman-proxy
rm -f /etc/sudoers.d/foreman_discovery
rm -f /etc/sysconfig/clocke
rm -f /etc/sysconfig/dhcpd
rm -f /etc/sysconfig/dhcpd6
rm -f /etc/sysconfig/dhcrelay
rm -f /etc/sysconfig/dhcrelay6
rm -f /etc/sysconfig/foreman
rm -f /etc/sysconfig/foreman-proxy
rm -f /etc/sysconfig/foreman-tasks
rm -f /etc/sysconfig/httpd
rm -f /etc/sysconfig/named
rm -rf /etc/sysconfig/pgsql
rm -f /etc/sysconfig/puppet
rm -f /etc/sysconfig/puppetmaster
rm -f /etc/sysconfig/xinetd
rm -f /etc/tftpd.map
rm -rf /etc/xinetd.d
rm -f /etc/xinetd.conf
rm -f /etc/zones.conf

rm -rf /var/named
rm -rf /var/www
rm -rf /var/cache/mod_proxy
rm -rf /var/cache/mod_ssl
rm -rf /var/lib/dhcpd
rm -rf /var/lib/foreman
rm -rf /var/lib/foreman-proxy
rm -rf /var/lib/hiera
rm -rf /var/lib/mysql
rm -rf /var/lib/pgsql
rm -rf /var/lib/puppet
rm -rf /var/lib/sepolgen
rm -rf /var/lib/tftpboot
rm -rf /var/log/ceph
rm -rf /var/log/foreman
rm -rf /var/log/foreman-proxy
rm -rf /var/log/httpd
rm -rf /var/log/mysqld.log
rm -rf /var/log/passenger-analytics
rm -rf /var/log/puppet
rm -rf /var/log/rhel-osp-installer
rm -rf /var/run/foreman
rm -rf /var/run/foreman-proxy
rm -rf /var/run/httpd
rm -rf /var/run/mysqld
rm -rf /var/run/named
rm -rf /var/run/named.pid
rm -rf /var/run/puppet
rm -rf /var/run/rubygem-passenger
rm -rf /var/run/xinetd.pid
rm -rf /usr/share/foreman
rm -rf /usr/share/foreman-installer
rm -rf /usr/share/openstack-foreman-installer
rm -rf /usr/share/openstack-puppet
rm -rf /usr/share/packstack
rm -rf /usr/share/puppet
rm -f /tmp/foreman_client.sh
rm -rf /var/tmp/pids
rm -rf /root/.augeas
rm -rf /root/.pki
rm -rf /root/.my.cnf
