#!/usr/bin/env bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/.."

{
	cat <<- 'EOH'
		# This file lists all individuals having contributed content to the repository.
		# For how it is generated, see `https://github.com/Kenmind/AirBnB_clone_v2/auth-gen/generate-authors.sh`.
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
