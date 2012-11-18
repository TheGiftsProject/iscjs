# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "iscjs"
  s.version = "0.1.4"
  s.authors     = ["NotNinjas Productions"]
  s.email       = ["jobs-il@ebay.com"]
  s.homepage    = "http://github.com/TheGiftsProject/iscjs"

  s.summary = "JavaScript UI plugins we use in our projects."
  s.description = "JavaScript UI plugins we use in our projects."
  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["README.md"]

  s.add_dependency('railties', '>= 3.1.0')
  s.add_dependency('coffee-rails')
  s.add_dependency('sass-rails')

  s.add_development_dependency('rails', '~> 3.2.0')
  s.add_development_dependency('ruby-debug19')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('rspec')
  s.add_development_dependency('sass')
  s.add_development_dependency('uglifier')

  s.require_paths = ['lib']
end