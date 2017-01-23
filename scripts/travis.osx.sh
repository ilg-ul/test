#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Safety settings (see https://gist.github.com/ilg-ul/383869cbb01f61a51c4d).

if [[ ! -z ${DEBUG} ]]
then
  set ${DEBUG} # Activate the expand mode if DEBUG is anything but empty.
else
  DEBUG=""
fi

set -o errexit # Exit if command failed.
set -o pipefail # Exit if pipe failed.
set -o nounset # Exit if variable not set.

# Remove the initial space and instead use '\n'.
IFS=$'\n\t'

# -----------------------------------------------------------------------------

pwd
uname -a
clang --version
java -version
# cat /Users/travis/build.sh
env
id
who am i
whoami
who

brew --version
brew tap homebrew/versions
#brew uninstall gcc
#brew install gcc5
brew install gcc6

gcc-5 --version
which gcc-5

gcc-6 --version
which gcc-6

exit 0
