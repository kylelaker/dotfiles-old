#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew

# Only continue if on macOS
if [ "$(uname -s)" != "Darwin" ]; then
    exit
fi

if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  # Install the correct homebrew for macOS
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

exit 0
