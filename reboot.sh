#!/usr/bin/env bash

push_git_repos(){
	python3 $HOME/Github/python_programs/gitpy/gitpy.py --push
}

OS_INFO=$(cat /etc/*-release)

case $OS_INFO in

	*"Fedora"*)
	push_git_repos
	bash updateLinux.sh
	sudo reboot
	;;

	*"CentOS"*)
	push_git_repos
	bash updateLinux.sh
	sudo reboot
	;;	

	*"Manjaro"*)
	push_git_repos
	bash updateLinux.sh
	sudo reboot
	;;

	*"Debian"*)
	push_git_repos
	bash updateLinux.sh
	sudo reboot
	;;	

	*)
	echo "OS could not be detected"
	;;
esac
