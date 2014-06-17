# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require './lib/loggly'
require 'bubble-wrap/all'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Loggly'
  app.frameworks += ["CoreData", "CoreLocation"]
  #app.sdk_version = "6.1"
end

#App.config.spec_mode = true

