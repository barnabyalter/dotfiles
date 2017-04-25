#!/bin/sh

source ~/.ssh_aliases
source ~/.aliases

source ~/perl5/perlbrew/etc/bashrc

export PATH=/usr/local/sbin:$HOME/.nodenv/shims:$HOME/.rbenv/bin:/usr/local/bin:$PATH

source ~/.rbenvrc
source ~/.dockerrc
source ~/.nodeenvrc
