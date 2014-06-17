unless defined? (Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile"
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'loggly/**/*.rb')).each do |filepath|
    app.files.unshift(filepath)
  end
end

