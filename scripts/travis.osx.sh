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

function do_before_install() {
  echo "before_install started"

  pwd
  uname -a

  clang --version
  which clang
  gcc --version
  which gcc
  java -version
  which java

  # cat /Users/travis/build.sh
  env
  # ls -l /usr/local/bin
  id
  whoami
  who

  brew --version
  brew cask list
  brew cask uninstall oclint

  brew tap homebrew/versions

  brew install gcc5
  gcc-5 --version
  which gcc-5

  brew install gcc6
  gcc-6 --version
  which gcc-6

  echo "before_install completed"
  return 0
}

function do_before_script() {
  echo "before_script started"

  echo "before_script completed"
  return 0
}

function do_script() {
  echo "script started"

  echo "script completed"
  return 0
}

function do_after_script() {
  echo "after_script started"

  echo "after_script completed"
  return 0
}
