#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Mittwoch, 12. Juni 2019 16:43 (C) 2019 von Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 17:46 von Leander Jedamus
# modified Wednesday, 12. June 2019 17:30 by Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 17:02 von Leander Jedamus

require "English"
require "i18n"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")


# puts $:

#I18n::Backend::Simple.include(I18n::Backend::Gettext)
I18n.load_path += Dir["translate/*.rb"]
I18n.locale = case ENV["LANG"]
                when "de_DE.UTF-8" then :de
                when "C"           then :en
              end

puts I18n.translate("gettext")

# vim:ai sw=2 sts=4 expandtab

