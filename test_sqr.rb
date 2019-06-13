#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Donnerstag, 13. Juni 2019 19:07 (C) 2019 von Leander Jedamus
# modifiziert Donnerstag, 13. Juni 2019 19:23 von Leander Jedamus

require "English"
require "test/unit"

$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

require "sqr"

Test::Unit::AutoRunner.default_runner = "gtk2"

class Test_Sqr < Test::Unit::TestCase
  def setup
    print "Erzeuge Testdaten. "
  end

  def teardown
    print "Lösche Testdaten. "
  end

  def test_sqr1
    msg = "Werte sind unterschiedlich. "
    assert_equal(sqr(10),100,msg)
  end
end

# vim:ai sw=2 sts=4 expandtab

