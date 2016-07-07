#!/usr/bin/env bash

xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
    python \
    pygobject \
    libtool \
    libffi \
    openssl \
    autoconf \
    bison \
    swig \
    glib \
    s3cmd \
    portaudio \
    mpg123

brew link --force openssl

mkdir -p $HOME/Library/Python/2.7/lib/python/site-packages
  echo 'import site; site.addsitedir("/usr/local/lib/python2.7/site-packages")' >> $HOME/Library/Python/2.7/lib/python/site-packages/homebrew.pth
  
sudo pip install --upgrade virtualenv
sudo pip install --upgrade pip setuptools
