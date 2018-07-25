#
# Cookbook:: vscode
# Recipe:: default
#
# Copyright:: 2018, Alexis Vanier
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

unless (node['platform'] == 'fedora' && node['platform_version'].to_f >= 22.0) ||
       (node['platform'] == 'centos' && node['platform_version'].to_f >= 7.0)
  abort 'This cookbook currently supports only Fedora and CentOS 7.'
end

yum_repository 'vscode' do
  description 'Visual Studio Code'
  baseurl 'https://packages.microsoft.com/yumrepos/vscode'
  gpgkey 'https://packages.microsoft.com/keys/microsoft.asc'
  action :create
end

package node['vscode']['insiders'] ? 'code-insiders' : 'code'
