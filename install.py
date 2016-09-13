#!/usr/bin/env python3
import os
import sys
import argparse

files = (
        '.dircolors',
        '.zshrc',
        '.vimrc',
        '.tmux.conf',
        '.Xresources',
        '.nethackrc',
        '.termite.config',
        '.i3.config',
        '.spectrwm.conf',
        '.config.fish',
        )

rules = {
        '.termite.config': '.config/termite/config',
        '.i3.config':      '.i3/config',
        '.config.fish':    '.config/fish/config.fish',
        }

parser = argparse.ArgumentParser(description='Create symlinks to managed dotfiles.')
parser.add_argument('-f', dest='overwrite', action='store_true', help='Overwrite existing files/symlinks')
parser.add_argument('-i', action='store_true', dest='interactive', help='Interactive mode; Ask for confirmation to overwrite for each file')
args = parser.parse_args()

if args.overwrite and args.interactive:
    print('Forcing overwrite and asking for confirmation are mutually exclusive, exiting...', file=sys.stderr)
    sys.exit(-1)

home = os.path.expanduser('~')
dotfiles = os.path.join(home, 'dotfiles')

def ask_for_confirmation(filename):
    print('%s exists; overwrite? (y/N): ' % destination, end='')
    return input().strip() == 'y'

for dotfile in files:
    source = os.path.join(dotfiles, dotfile)

    if dotfile in rules:
        destination = os.path.join(home, rules[dotfile])
        directories = os.path.dirname(destination)
        if not os.path.exists(directories):
            os.makedirs(directories)
    else:
        destination = os.path.join(home, dotfile)

    file_exists = os.path.exists(destination)
    link_exists = os.path.islink(destination)
    destination_exists = file_exists or link_exists

    link = not destination_exists
    if destination_exists:
        if args.interactive and ask_for_confirmation(destination):
            os.remove(destination)
            link = True
        elif args.overwrite:
            os.remove(destination)
            link = True
    if link:
        print('Symlinking %s -> %s.' % (source, destination))
        os.symlink(source, destination)
    else:
        print('File %s already exists; skipping...' % destination.replace(home, '~'))



