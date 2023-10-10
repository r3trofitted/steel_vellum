require_relative "lib/steel_vellum/version"

Gem::Specification.new do |s|
  s.name     = "steel_vellum"
  s.version  = SteelVellum::VERSION
  s.summary  = "A D&D 5e character creation library"
  s.authors  = ["Ronan Limon Duparcmeur"]
  s.files    = Dir["lib/**/*.rb"]
  s.license  = "MIT"
  s.homepage = "https://github.com/r3trofitted/steel_vellum"
  
  s.add_development_dependency "minitest"
  s.add_development_dependency "minitest-reporters"
end
