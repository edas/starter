#!/usr/bin/env bash

###############################################################################
# Ruby
###############################################################################

if [ -e "/usr/local/opt/ruby" ]; then
  PATH=/usr/local/opt/ruby/bin:$PATH
  LDFLAGS="-L/usr/local/opt/ruby/lib $LDFLAGS"
  CPPFLAGS="-I/usr/local/opt/ruby/include $CPPFLAGS"
  PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig:$PKG_CONFIG_PATH"
fi
export PATH
# Install gems from Gemfile
gem install bundler -f