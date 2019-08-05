#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Freitag, 07. Juni 2019 15:19 (C) 2019 von Leander Jedamus
# modifiziert Montag, 05. August 2019 17:51 von Leander Jedamus
# modifiziert Samstag, 08. Juni 2019 18:42 von Leander Jedamus
# modifiziert Freitag, 07. Juni 2019 15:21 von Leander Jedamus

require "English"

def runden(zahl,stellen)
  p = 10.0**stellen
  zahl2 = (zahl*p+0.5).truncate
  return(zahl2 / p)
end

def runden_s(zahl,stellen)
  return sprintf("%." + stellen.to_s + "f",runden(zahl,stellen)) 
end

#print(runden(1234.5678,2),"\n")
#print(runden_s(1234.0,4),"\n")

# vim:ai sw=2 sts=4 expandtab

