#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Montag, 17. Juni 2019 10:29 (C) 2019 von Leander Jedamus
# modifiziert Montag, 17. Juni 2019 10:53 von Leander Jedamus

require "English"
require "logger"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

logger = Logger.new(STDOUT)
logger.level = Logger::WARN
logger.datetime_format = '%Y-%m-%d %H:%M:%S'
logger.formatter = proc do |severity, datetime, progname, msg|
  "#{datetime}: #{severity} #{msg}\n"
end


logger.debug { "Created logger" }
logger.info { "Program started" }
logger.warn { "Nothing to do!" }

path = "a_non_existent_file"

begin
  File.foreach(path) do |line|
    unless line =~ /^(\w+) = (.*)$/
      logger.error { "Line in wrong format: #{line.chomp}" }
    end
  end
rescue => err
  logger.fatal { "Caught exception; exiting" }
  logger.fatal { err }
end

# vim:ai sw=2 sts=4 expandtab

