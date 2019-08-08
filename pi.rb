#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Donnerstag, 08. August 2019 09:27 (C) 2019 von Leander Jedamus
# modifiziert Donnerstag, 08. August 2019 15:12 von Leander Jedamus

require "English"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

include Math
print 4*atan(1.0),"\n"
print PI,"\n"

# vim:ai sw=2 sts=4 expandtab

