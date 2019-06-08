#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Samstag, 08. Juni 2019 20:00 (C) 2019 von Leander Jedamus
# modifiziert Samstag, 08. Juni 2019 20:02 von Leander Jedamus

require "English"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

if (RUBY_PLATFORM =~ /darwin/) then
  print("MacOS.\n")
elsif (RUBY_PLATFORM =~ /linux/)
  print("Linux.\n")
end

# vim:ai sw=2 sts=4 expandtab

