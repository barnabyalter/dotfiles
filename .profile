#!/bin/sh

export PATH=/usr/local/sbin:$HOME/.nodenv/shims:$HOME/.rbenv/bin:/usr/local/bin:$PATH

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
