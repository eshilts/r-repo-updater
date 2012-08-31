#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
require 'file-monitor'

def watch_directory(repo) 
  base_dir = '/var/www'
  watch_dir = sprintf('%s/%s.va.opower.it', base_dir, repo)
  base_command = "/opt/opower/bin/generate_r_repo.sh"
  
  update_repo_command = sprintf("%s %s", base_command, watch_dir)

  FileMonitor.watch watch_dir do
    frequency 10

    files {
      disallow /.*/
      allow /\.tar\.gz$/
    }

    exec {|events|
      puts sprintf("Updating repository [%s]", watch_dir)
      system(update_repo_command)
    }
  end
end

dir = ARGV[0] || "r-repo"

watch_directory  dir
