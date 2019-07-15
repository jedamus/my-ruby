#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Montag, 15. Juli 2019 12:29 (C) 2019 von Leander Jedamus
# modifiziert Montag, 15. Juli 2019 12:58 von Leander Jedamus

require "English"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")
require "runden"

class Energieversorger

  def initialize(name,grundpreis,arbeitspreis)
    @name, @grundpreis, @arbeitspreis = name, grundpreis, arbeitspreis
  end

  def putname()
    return(@name)
  end
  
  def berechnen(verbrauch)
    return(@grundpreis + verbrauch * @arbeitspreis)
  end

end

verbrauch = 10000.0 # kWh
verbrauch = 2090.0 # kWh
evm = Energieversorger.new("EVM", 12 * 11.9, 0.265)
innogy = Energieversorger.new("innogy", 99.96, 0.2855)

puts evm.putname + ": " + runden(evm.berechnen(verbrauch),2).to_s
puts innogy.putname + ": " + runden(innogy.berechnen(verbrauch),2).to_s

for i in 1.upto(10000)
  if (evm.berechnen(i)-innogy.berechnen(i)).abs < 0.01 then
    puts i.to_s
  end
end
  
# vim:ai sw=2 sts=4 expandtab

