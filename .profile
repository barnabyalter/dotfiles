#!/bin/sh

export PATH=/usr/local/opt/openssl/bin:/usr/local/sbin:$HOME/.nodenv/shims:$HOME/.rbenv/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.linkerd2/bin
export GOPATH=$HOME/go

FILES=(
"$HOME/perl5/perlbrew/etc/bashrc"
"$HOME/.ssh_aliases"
"$HOME/.aliases"
"$HOME/.rbenvrc"
"$HOME/.dockerrc"
"$HOME/.nodenvrc"
"$HOME/.awscreds"
"$HOME/.kuberc"
)

for f in $FILES; do
  if [ -f "$f" ]; then
    source $f
  fi
done

