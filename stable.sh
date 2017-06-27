#!/bin/bash

git checkout master
git branch -D stable
git checkout -b stable
## merge PRs
#hub merge ....
hub merge https://github.com/BVLC/caffe/pull/2016
hub merge https://github.com/DR08/caffe/pull/1
## commit
chmod +x stable.sh
git add stable.sh
git commit -m 'creation script'
