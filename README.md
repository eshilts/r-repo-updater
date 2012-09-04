r-repo-updater
==============

Use r-repo-updater to keep an eye on your repository and update the repository
package index when any source code files are updated.

Installation
------------

1. Clone the repo to the server that hosts your package repository: `git clone https://github.com/eshilts/r-repo-updater.git`
1. Go into that directory: `cd r-repo-updater`
1. Install gems to the vendor directory: `bundle install --path vendor`
1. Run `watch_r_package_repository.rb repository_directory`

Notes
-----

* Users outside of Opower will have to do some refactoring to make this work. Let me know if you would like help.
* This only works on Linux machines.
