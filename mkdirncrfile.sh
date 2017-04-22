#!/bin/bash

mkdir -p linux-intro/{dev/{git,jenkins,maven,vagrant},ops/{ansible,chef,docker,puppet},tex/{CD,CI}}

myfun()
{
	touch srinivas .srinivas
	echo "Name = Srinivas" > srinivas
	pwd >> srinivas
	cat srinivas > .srinivas
}

cd /home/devops/linux-intro
myfun
cd /home/devops/linux-intro/dev
myfun
cd /home/devops/linux-intro/dev/git
myfun
cd /home/devops/linux-intro/dev/jenkins
myfun
cd /home/devops/linux-intro/dev/maven
myfun
cd /home/devops/linux-intro/dev/vagrant
myfun

cd /home/devops/linux-intro/ops
myfun
cd /home/devops/linux-intro/ops/ansible
myfun
cd /home/devops/linux-intro/ops/chef
myfun
cd /home/devops/linux-intro/ops/docker
myfun
cd /home/devops/linux-intro/ops/puppet
myfun

cd /home/devops/linux-intro/tex
myfun
cd /home/devops/linux-intro/tex/CD
myfun
cd /home/devops/linux-intro/tex/CI
myfun
