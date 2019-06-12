#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Mittwoch, 12. Juni 2019 16:43 (C) 2019 von Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 19:04 von Leander Jedamus
# modified Wednesday, 12. June 2019 17:55 by Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 17:46 von Leander Jedamus
# modified Wednesday, 12. June 2019 17:30 by Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 17:02 von Leander Jedamus

require "English"
require "i18n"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

def gettext(s)
  return(I18n.translate(s))
end
alias _ gettext

I18n.load_path += Dir["translate/*.rb"]

lang = ENV["LANG"]
I18n.locale = :en
I18n.locale = :de if lang =~ /de/ 

puts _("gettext")

# vim:ai sw=2 sts=4 expandtab

