#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Freitag, 07. Juni 2019 15:19 (C) 2019 von Leander Jedamus
# modifiziert Samstag, 08. Juni 2019 18:37 von Leander Jedamus
# modifiziert Freitag, 07. Juni 2019 15:21 von Leander Jedamus

require "English"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

def runden(z,s)
  p = 10.0**s
  return((z*p+0.5).truncate / p)
end

#print(runden(1234.5678,2),"\n")

# vim:ai sw=2 sts=4 expandtab

