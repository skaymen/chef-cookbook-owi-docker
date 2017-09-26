#
# Cookbook Name:: owi_docker
# Recipe:: docker_service

include_recipe 'chef-yum-docker'

node['owi_docker']['service'].each do |service_name, service_properties|
  docker_service service_name doi
    install_method service_properties['install_method'] if service_properties['install_method']
    notifies :run, 'execute[systemctl restart docker]', :immediate
    source service_properties['source'] if service_properties['source']
    version service_properties['version'] if service_properties['version']
    checksum service_properties['checksum'] if service_properties['checksum']
    api_cors_header service_properties['api_cors_header'] if service_properties['api_cors_header']
    bridge service_properties['bridge'] if service_properties['bridge']
    bip service_properties['bip'] if service_properties['bip']
    debug service_properties['debug'] if service_properties['debug']
    cluster_store service_properties['cluster_store'] if service_properties['cluster_store']
    cluster_advertise service_properties['cluster_advertise'] if service_properties['cluster_advertise']
    cluster_store_opts service_properties['cluster_store_opts'] if service_properties['cluster_store_opts']
    daemon service_properties['daemon'] if service_properties['daemon']
    dns service_properties['dns'] if service_properties['dns']
    dns_search service_properties['dns_search'] if service_properties['dns_search']
    exec_driver service_properties['exec_driver'] if service_properties['exec_driver']
    fixed_cidr service_properties['fixed_cidr'] if service_properties['fixed_cidr']
    fixed_cidr_v6 service_properties['fixed_cidr_v6'] if service_properties['fixed_cidr_v6']
    group service_properties['group'] if service_properties['group']
    graph service_properties['graph'] if service_properties['graph']
    host service_properties['host'] if service_properties['host']
    icc service_properties['icc'] if service_properties['icc']
    insecure_registry service_properties['insecure_registry'] if service_properties['insecure_registry']
    ip service_properties['ip'] if service_properties['ip']
    ip_forward service_properties['ip_forward'] if service_properties['ip_forward']
    ipv4_forward service_properties['ipv4_forward'] if service_properties['ipv4_forward']
    ipv6_forward service_properties['ipv6_forward'] if service_properties['ipv6_forward']
    ip_masq service_properties['ip_masq'] if service_properties['ip_masq']
    iptables service_properties['iptables'] if service_properties['iptables']
    ipv6 service_properties['ipv6'] if service_properties['ipv6']
    log_level service_properties['log_level'] if service_properties['log_level']
    labels service_properties['labels'] if service_properties['labels']
    log_driver service_properties['log_driver'] if service_properties['log_driver']
    log_opts service_properties['log_opts'] if service_properties['log_opts']
    mtu service_properties['mtu'] if service_properties['mtu']
    package_name service_properties['package_name'] if service_properties['package_name']
    pidfile service_properties['pidfile'] if service_properties['pidfile']
    registry_mirror service_properties['registry_mirror'] if service_properties['registry_mirror']
    storage_driver service_properties['storage_driver'] if service_properties['storage_driver']
    selinux_enabled service_properties['selinux_enabled'] if service_properties['selinux_enabled']
    storage_opts service_properties['storage_opts'] if service_properties['storage_opts']
    tls service_properties['tls'] if service_properties['tls']
    tls_verify service_properties['tls_verify'] if service_properties['tls_verify']
    tls_ca_cert service_properties['tls_ca_cert'] if service_properties['tls_ca_cert']
    tls_server_cert service_properties['tls_server_cert'] if service_properties['tls_server_cert']
    tls_server_key service_properties['tls_server_key'] if service_properties['tls_server_key']
    tls_client_cert service_properties['tls_client_cert'] if service_properties['tls_client_cert']
    tls_client_key service_properties['tls_client_key'] if service_properties['tls_client_key']
    default_ulimit service_properties['default_ulimit'] if service_properties['default_ulimit']
    http_proxy service_properties['http_proxy'] if service_properties['http_proxy']
    https_proxy service_properties['https_proxy'] if service_properties['https_proxy']
    no_proxy service_properties['no_proxy'] if service_properties['no_proxy']
    tmpdir service_properties['tmpdir'] if service_properties['tmpdir']
    logfile service_properties['logfile'] if service_properties['logfile']
    userland_proxy service_properties['userland_proxy'] if service_properties['userland_proxy']
    disable_legacy_registry service_properties['disable_legacy_registry'] if service_properties['disable_legacy_registry']
    userns_remap service_properties['userns_remap'] if service_properties['userns_remap']
    mount_flags service_properties['mount_flags'] if service_properties['mount_flags']
    misc_opts service_properties['misc_opts'] if service_properties['misc_opts']
    systemd_opts service_properties['systemd_opts'] if service_properties['systemd_opts']
    action %i[create start]
  end
end

execute 'systemctl restart docker' do
end
