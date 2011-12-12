#
# Cookbook Name:: maven3
# Recipe:: default
#
# Copyright 2011, Cybercom
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
#

include_recipe "apt"

apt_repository "maven3" do
  uri "http://ppa.launchpad.net/natecarlson/maven3/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "3DD9F856"
  action :add
end

package "maven3" do
  ## TODO should add possibility to specify version
  action :install
end