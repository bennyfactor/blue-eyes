lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'blue-eyes/version'

Gem::Specification.new do |spec|
  spec.name        = "blue-eyes"
  spec.version     = BlueEyes::VERSION::STRING
  spec.summary     = "A Sinatra app generator."
  spec.description = "BlueEyes is a Sinatra app generator with Rails-like simplicity."
  spec.email       = "the@brianemory.com"
  spec.homepage    = "http://thebrianemory.github.io/blue-eyes/"
  spec.authors     = ["Brian Emory"]
  spec.licenses    = "MIT"

  spec.executables = ['blue-eyes']

  spec.require_paths = [%q{lib}]

  spec.files = Dir.glob("lib/**/*") +
    [
      "lib/blue-eyes/generators/app/templates/app/models/.gitkeep",
      "lib/blue-eyes/generators/app/templates/public/images/.gitkeep",
      "lib/blue-eyes/generators/app/templates/public/javascripts/.gitkeep"
    ] +
    Dir.glob("spec/**/*") +
    %w(Gemfile Gemfile.lock LICENSE README.md Rakefile)

  spec.add_runtime_dependency('thor', '~> 0.18')
  spec.add_runtime_dependency('activesupport', '~> 5.0')
  spec.add_development_dependency('bundler', '~> 1.5', '>= 1.5.1')
  spec.add_development_dependency('minitest', '~> 5.2')
end
