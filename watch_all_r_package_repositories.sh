#!/bin/bash

bundle exec watch_r_package_repository.rb r-repo &
bundle exec watch_r_package_repository.rb r-repo-dev &
bundle exec watch_r_package_repository.rb r-repo-qa &
bundle exec watch_r_package_repository.rb r-repo-stage &
