#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Freitag, 07. Juni 2019 14:42 (C) 2019 von Leander Jedamus
# modifiziert Freitag, 07. Juni 2019 18:43 von Leander Jedamus

require "English"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")
require "runden"

euro_pro_kWh = 0.23994

tage_pro_jahr = 365.24
stunden_pro_tag = 24
stunden_pro_jahr = stunden_pro_tag * tage_pro_jahr

watt_alte_pumpe = 80
watt_neue_pumpe = 30
watt_differenz = watt_alte_pumpe - watt_neue_pumpe

Wh = watt_differenz * stunden_pro_jahr
kWh = Wh / 1000

preis = kWh * euro_pro_kWh
#preis = (preis * 100).truncate / 100.0
preis = runden(preis,2)
print(preis," €","\n")

# vim:ai sw=2 sts=4 expandtab

