# See https://github.com/chef-cookbooks/docker#properties-4

# The properties here are analagous to the service properties for the
# docker_service properties in the Docker cookbook
default['owi_docker']['service']['default']['install_method'] = 'package'
default['owi_docker']['service']['default']['version'] = '17.03.1'

# Specify the version of Docker Machine required. Otherwise, use the
# `default['owi_docker']['machine'][binary_location]` to specify your own binary
# location
default['owi_docker']['machine']['version'] = '0.12.0'

# Specify the version of Docker Compose required. Otherwise, use the
# `default['owi_docker']['compose'][binary_location]` to specify your own binary
# location
default['owi_docker']['compose']['version'] = '1.13.0'
