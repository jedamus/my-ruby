#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Montag, 15. Juli 2019 12:29 (C) 2019 von Leander Jedamus
# modifiziert Montag, 05. August 2019 09:21 von Leander Jedamus
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

  def setverbrauch(verbrauch)
    @verbrauch = verbrauch
  end
  
  def berechnen(verbrauch)
    return(@grundpreis + verbrauch * @arbeitspreis)
  end

  def to_s()
    return @name + ": " + runden(berechnen(@verbrauch),2).to_s + " €"
  end

end

verbrauch = 10000.0 # kWh
#verbrauch = 2090.0 # kWh
verbrauch = 1800.0 # kWh
evm = Energieversorger.new("EVM", 12 * 11.9, 0.265)
evm.setverbrauch(verbrauch)
innogy = Energieversorger.new("innogy", 99.96, 0.2855)
innogy.setverbrauch(verbrauch)
innogy_smart = Energieversorger.new("innogy", 99.96, 0.2786)
innogy_smart.setverbrauch(verbrauch)

puts evm
puts innogy
puts innogy_smart
#exit

for i in 1.upto(10000)
  if (evm.berechnen(i)-innogy.berechnen(i)).abs < 0.01 then
    puts i.to_s
  end
end
  
# vim:ai sw=2 sts=4 expandtab

