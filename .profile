#!/bin/sh

export PATH=/usr/local/sbin:$HOME/.nodenv/shims:$HOME/.rbenv/bin:/usr/local/bin:$PATH

FILES=(
"~/perl5/perlbrew/etc/bashrc"
"~/.ssh_aliases"
"~/.aliases"
"~/.rbenvrc"
"~/.dockerrc"
"~/.nodenvrc"
"~/.awscreds"
"~/.kuberc"
)

for f in $FILES; do
  if [ -f "$f" ]; then
    source $f
  fi
done
