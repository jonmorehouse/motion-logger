# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require './lib/logger'
require 'bubble-wrap/location'
require 'loggly'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Logger'
  app.frameworks += ["CoreLocation"]
end

App.config.spec_mode = true

