#!/bin/sh

# erzeugt Samstag, 08. Juni 2019 18:55 (C) 2019 von Leander Jedamus
# modifiziert Samstag, 08. Juni 2019 19:00 von Leander Jedamus

echo 'Dies gibt $: in ruby aus:'
ruby -e 'puts $:'

echo

echo 'Dies gibt die Top-Level-Konstanten aus:'
ruby -e 'puts Module.constants.sort.reject{|x| eval(x.to_s).is_a? Module}'

echo

echo 'Dies gibt die Environment-Variable HOME aus:'
ruby -e 'puts ENV["HOME"]'

# vim:ai sw=2

