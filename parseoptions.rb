#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

# erzeugt Mittwoch, 12. Juni 2019 15:14 (C) 2019 von Leander Jedamus
# modifiziert Mittwoch, 12. Juni 2019 16:32 von Leander Jedamus

require "English"
require "optparse"
$LOAD_PATH.unshift(ENV["HOME"]+"/Projekte/ruby/lib")
$LOAD_PATH.unshift(File.expand_path(File.dirname($PROGRAM_NAME)))
$LOAD_PATH.unshift(".")

Options = Struct.new(:name)

class Parser
  def self.parse(options)
    args = Options.new("world")

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: " + File.basename($PROGRAM_NAME) + " [options]"

      opts.on("-nNAME", "--name=NAME", "Name to say hello to") do |n| args.name = n
      end

      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(options)
    return args
  end
end
# options = Parser.parse %w[--help]
options = Parser.parse(ARGV)
puts options[0]

# vim:ai sw=2 sts=4 expandtab

