#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Freitag, 07. Juni 2019 15:19 (C) 2019 von Leander Jedamus
# modifiziert Samstag, 08. Juni 2019 18:42 von Leander Jedamus
# modifiziert Freitag, 07. Juni 2019 15:21 von Leander Jedamus

require "English"

def runden(z,s)
  p = 10.0**s
  return((z*p+0.5).truncate / p)
end

#print(runden(1234.5678,2),"\n")

# vim:ai sw=2 sts=4 expandtab

