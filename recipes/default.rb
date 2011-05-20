#
# Author:: Ed Bosher (<ed@butter.com.hk>)
# Copyright:: Copyright (c) 2011 Digital Butter Ltd.
# Cookbook Name:: github
# Recipe:: default
#
# Copyright 2011, Digital Butter Limited
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

r = []

["libxslt1-dev","libxml2-dev"].each do |pack|
  r.push package pack do
    action :nothing
  end
end

<<<<<<< HEAD
["git-ssh-wrapper","rest-client","json"].each do |pack|
  r.push gem_package pack do
    action :nothing
  end
=======
r.push gem_package "git-ssh-wrapper" do
  action :nothing
end

r.push gem_package "octopi" do
  action :nothing
>>>>>>> 60d0b59a676ed9cf565d49e943a734ce3ce80177
end

r.each do |pack|
  pack.run_action(:install)
end

require 'rubygems'
Gem.clear_paths
require 'git-ssh-wrapper'
require 'rest_client'