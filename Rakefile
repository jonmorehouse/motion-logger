# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require './lib/loggly'
require 'bubble-wrap/location'
require 'afmotion'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Loggly'
  app.frameworks += ["CoreLocation"]
end

App.config.spec_mode = true

