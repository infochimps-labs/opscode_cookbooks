#
# Rakefile for Ironfan Pantry
#
# Author::    Nathaniel Eliot
# Copyright:: Copyright (c) 2012 Infochimps, Inc.
# License::   Apache License, Version 2.0
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

require 'rubygems' unless defined?(Gem)
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake/version_task'
paths = Dir.glob(File.join('*','VERSION'))
cookbooks = paths.map {|path| File.basename(File.split(path)[0]) }
cookbooks.each do |ckbk|
  namespace ckbk do
    Rake::VersionTask.new do |task|
      task.with_git     = true
      task.with_git_tag = true
      task.filename     = File.join(ckbk,'VERSION')
    end
  end
end

namespace :all do
  namespace :version do
    desc "Bump all cookbooks to next patch version"
    task :bump => cookbooks.map {|ckbk| ckbk+':version:bump' }

    namespace :bump do
      desc "Bump all cookbooks to next major version"
      task :major => cookbooks.map {|ckbk| ckbk+':version:bump:major' }

      desc "Bump all cookbooks to next minor version"
      task :minor => cookbooks.map {|ckbk| ckbk+':version:bump:minor' }

      desc "Bump all cookbooks to next prerelease patch version"
      task :pre => cookbooks.map {|ckbk| ckbk+':version:bump:pre' }

      namespace :pre do
        desc "Bump all cookbooks to next prerelease major version"
        task :major => cookbooks.map {|ckbk| ckbk+':version:bump:pre:major' }

        desc "Bump all cookbooks to next prerelease minor version"
        task :minor => cookbooks.map {|ckbk| ckbk+':version:bump:pre:minor' }
      end
    end
  end
end

