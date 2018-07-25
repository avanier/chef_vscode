name 'vscode'
maintainer 'Alexis Vanier'
maintainer_email 'alexis@amonoid.io'
license 'Apache-2.0'
description 'Installs Visual Studio Code'
long_description 'Installs Visual Studio Code'
version '0.1.1'
chef_version '>= 12.1' if respond_to?(:chef_version)

supports 'centos', '>= 7'
supports 'fedora', '>= 22'

source_url 'https://github.com/avanier/chef_vscode'
issues_url 'https://github.com/avanier/chef_vscode/issues'
