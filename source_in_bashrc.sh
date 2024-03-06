# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# WIP for now because I can't figure the search forward history keybinding out...
#. ./bindings.sh

HISTTIMEFORMAT="%d/%m/%y %T "
