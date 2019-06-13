#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Donnerstag, 13. Juni 2019 19:02 (C) 2019 von Leander Jedamus
# modifiziert Donnerstag, 13. Juni 2019 19:04 von Leander Jedamus

require "English"
require "test/unit"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

class MyTest < Test::Unit::TestCase
  def setup
    print "Erzeuge Testdaten. "
  end

  def teardown
    print "Lösche Testdaten. "
  end

  def test_fail
    assert(false, "Assertion was false. ")
  end
end

# vim:ai sw=2 sts=4 expandtab

