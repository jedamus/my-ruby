#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Mittwoch, 12. Juni 2019 16:43 (C) 2019 von Leander Jedamus
# modifiziert Samstag, 16. Januar 2021 16:54 von Leander Jedamus
# modifiziert Donnerstag, 13. Juni 2019 18:41 von Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 21:36 von Leander Jedamus
# modified Wednesday, 12. June 2019 17:55 by Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 17:46 von Leander Jedamus
# modified Wednesday, 12. June 2019 17:30 by Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 17:02 von Leander Jedamus

require "English"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")
#ENV["LANG"] = "en_US"
require "my_gettext"

puts _("translate")
puts _("gettext")

# vim:ai sw=2 sts=4 expandtab

