# See https://github.com/chef-cookbooks/docker#properties-4

# The properties here are analagous to the service properties for the
# docker_service properties in the Docker cookbook
default['owi_docker']['service']['default']['install_method'] = 'package'
default['owi_docker']['service']['default']['version'] = '17.03.1'
