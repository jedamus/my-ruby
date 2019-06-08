#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Freitag, 31. Mai 2019 16:08 (C) 2019 von Leander Jedamus
# modifiziert Samstag, 08. Juni 2019 18:36 von Leander Jedamus
# modifiziert Freitag, 31. Mai 2019 16:45 von Leander Jedamus

require "English"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

# Dies ist ein Modul.
module howto

  # Dies ist eine Methode des Modul howto
  def sqr(x)
    return(x**2)
  end

end

# == Dies ist eine Klasse:
#
# = Überschrift groß
#
# Überschriften beginnen mit einem Gleichheitszeichen.
#
# == Überschrift kleiner
#
# === Überschrift klein
#
#  Eingerückte Zeilen werden wortgetreu in Codeschrift angezeigt.
#  Passen Sie auf, daß Sie Überschriften und Listen nicht einrücken.
#
# Listenelemente beginnen mit * oder -.
# Kennzeichnen Sie Schriftverwendung durch Sonderzeichen oder HTML:
# * _kursiv_ oder <i>mehrere Wörter kursiv</i>
# * *fett* oder <b>mehrere Wörter fett</b>
# * +Code+ oder <tt>mehrere Wörter Code</tt>
#
# 1. Nummerierte Listen beginnen mit Zahlen.
# 99. Jede Zahl funktioniert; Sie brauchen nicht aufeinander zu folgen.
# 1. Es gibt keine Möglichkeit, Listen zu verschachteln.
#
# [Element 1] Dies ist eine Beschreibung von Element 1.
# [Element 2] Dies ist eine Beschreibung von Element 2.
#
class How

  # public
  def how_public(x)
    return("ich bin how_public")
  end

  protected

  # protected
  def how_protected(x)
    return("ich bin how_protected")
  end

  private

  # private (wird nicht dokumentiert!)
  def how_private(x)
    return("ich bin how_private")
  end

end

# vim:ai sw=2 sts=4 expandtab

