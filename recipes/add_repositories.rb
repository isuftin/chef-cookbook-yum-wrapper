#
# Cookbook:: yum_wrapper
# Recipe:: add_repositories
#
# Description:: Adds YUM repositories to the system

node['yum_wrapper']['repositories']['add'].each do |repo_name, repo_data|
  yum_repository repo_name do
    baseurl repo_data['baseurl'] unless repo_data['baseurl'].nil?
    cost                    repo_data['cost'] unless repo_data['cost'].nil?
    clean_headers           repo_data['clean_headers'] unless repo_data['clean_headers'].nil?
    clean_metadata          repo_data['clean_metadata'] unless repo_data['clean_metadata'].nil?
    description             repo_data['description'] unless repo_data['description'].nil?
    enabled                 repo_data['enabled'] unless repo_data['enabled'].nil?
    enablegroups            repo_data['enablegroups'] unless repo_data['enablegroups'].nil?
    exclude                 repo_data['exclude'] unless repo_data['exclude'].nil?
    failovermethod          repo_data['failovermethod'] unless repo_data['failovermethod'].nil?
    fastestmirror_enabled   repo_data['fastestmirror_enabled'] unless repo_data['fastestmirror_enabled'].nil?
    gpgcheck                repo_data['gpgcheck'] unless repo_data['gpgcheck'].nil?
    gpgkey                  repo_data['gpgkey'] unless repo_data['gpgkey'].nil?
    http_caching            repo_data['http_caching'] unless repo_data['http_caching'].nil?
    include_config          repo_data['include_config'] unless repo_data['include_config'].nil?
    includepkgs             repo_data['includepkgs'] unless repo_data['includepkgs'].nil?
    keepalive               repo_data['keepalive'] unless repo_data['keepalive'].nil?
    make_cache              repo_data['make_cache'] unless repo_data['make_cache'].nil?
    max_retries             repo_data['max_retries'] unless repo_data['max_retries'].nil?
    metadata_expire         repo_data['metadata_expire'] unless repo_data['metadata_expire'].nil?
    mirrorexpire            repo_data['mirrorexpire'] unless repo_data['mirrorexpire'].nil?
    mirrorlist              repo_data['mirrorlist'] unless repo_data['mirrorlist'].nil?
    mirror_expire           repo_data['mirror_expire'] unless repo_data['mirror_expire'].nil?
    mirrorlist_expire       repo_data['mirrorlist_expire'] unless repo_data['mirrorlist_expire'].nil?
    options                 repo_data['options'] unless repo_data['options'].nil?
    priority                repo_data['priority'] unless repo_data['priority'].nil?
    proxy                   repo_data['proxy'] unless repo_data['proxy'].nil?
    proxy_username          repo_data['proxy_username'] unless repo_data['proxy_username'].nil?
    proxy_password          repo_data['proxy_password'] unless repo_data['proxy_password'].nil?
    username                repo_data['username'] unless repo_data['username'].nil?
    password                repo_data['password'] unless repo_data['password'].nil?
    repo_gpgcheck           repo_data['repo_gpgcheck'] unless repo_data['repo_gpgcheck'].nil?
    report_instanceid       repo_data['report_instanceid'] unless repo_data['report_instanceid'].nil?
    repositoryid            repo_data['repositoryid'] unless repo_data['repositoryid'].nil?
    sensitive               repo_data['sensitive'] unless repo_data['sensitive'].nil?
    skip_if_unavailable     repo_data['skip_if_unavailable'] unless repo_data['skip_if_unavailable'].nil?
    source                  repo_data['source'] unless repo_data['source'].nil?
    sslcacert               repo_data['sslcacert'] unless repo_data['sslcacert'].nil?
    sslclientcert           repo_data['sslclientcert'] unless repo_data['sslclientcert'].nil?
    sslclientkey            repo_data['sslclientkey'] unless repo_data['sslclientkey'].nil?
    sslverify               repo_data['sslverify'] unless repo_data['sslverify'].nil?
    timeout                 repo_data['timeout'] unless repo_data['timeout'].nil?
    action                  :create
  end
end
