name 'yum_wrapper'
maintainer 'USGS Water Mission Area (USGS-WMA)'
maintainer_email 'isuftin@usgs.gov'
license 'CPL-1.0'
description 'Installs/Configures WMA YUM wrapper cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports         'centos', '>= 6.6'
supports         'centos', '>= 7.1'
issues_url 'https://github.com/USGS-CIDA/chef-cookbook-yum-wrapper/issues'
source_url 'https://github.com/USGS-CIDA/chef-cookbook-yum-wrapper'
