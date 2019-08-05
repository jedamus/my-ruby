#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Montag, 15. Juli 2019 12:29 (C) 2019 von Leander Jedamus
# modifiziert Montag, 05. August 2019 10:06 von Leander Jedamus
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
    return @name + ": " + runden_s(berechnen(@verbrauch),2) + " €"
  end

end

verbrauch = 10000.0 # kWh
#verbrauch = 2090.0 # kWh
verbrauch = 1800.0 # kWh
evm = Energieversorger.new("EVM", 12 * 11.9, 0.265)
evm.setverbrauch(verbrauch)
innogy = Energieversorger.new("innogy", 99.96, 0.2855)
innogy.setverbrauch(verbrauch)
innogy_smart = Energieversorger.new("innogy_smart", 99.96, 0.2786)
innogy_smart.setverbrauch(verbrauch)

puts evm
puts innogy
puts innogy_smart
#exit

print "\nevm to innogy: "
for i in 1.upto(10000)
  if (evm.berechnen(i)-innogy.berechnen(i)).abs < 0.01 then
    puts i.to_s + " kWh"
  end
end

print "\nevm to innogy_smart: "
for i in 1.upto(10000)
  if (evm.berechnen(i)-innogy_smart.berechnen(i)).abs < 0.01 then
    puts i.to_s + " kWh"
  end
end

print "\ninnogy to innogy_smart: "
for i in 1.upto(10000)
  if (innogy.berechnen(i)-innogy_smart.berechnen(i)).abs < 0.01 then
    puts i.to_s + " kWh"
  end
end
  
# vim:ai sw=2 sts=4 expandtab

