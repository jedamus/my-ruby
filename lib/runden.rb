#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Freitag, 07. Juni 2019 15:19 (C) 2019 von Leander Jedamus
# modifiziert Montag, 05. August 2019 09:57 von Leander Jedamus
# modifiziert Samstag, 08. Juni 2019 18:42 von Leander Jedamus
# modifiziert Freitag, 07. Juni 2019 15:21 von Leander Jedamus

require "English"

def runden(z,s)
  p = 10.0**s
  z2 = (z*p+0.5).truncate
  return(z2 / p)
end

def runden_s(z,s)
  p = 10.0**s
  z2 = z*p
  str = ((z2+0.5).truncate / p).to_s
  z2 = z2.ceil
  for i in 1.upto(s-1)
    p = 10**i
    # print "i=", i, ", z2 = ", z2, "\n"
    if (z2 % p) == 0 then
      str = str + "0"
    else
      break
    end
  end
  return str
end

#print(runden(1234.5678,2),"\n")
#print(runden_s(1234.0,4),"\n")

# vim:ai sw=2 sts=4 expandtab

