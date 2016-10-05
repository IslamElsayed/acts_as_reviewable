# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "acts_as_reviewable"
  s.summary = "Reviews for any AR model with ratings and review commentary."
  s.description = "Reviews for any AR model with ratings and review commentary."
  s.files = `git ls-files`.split("\n")
  s.version = "1.0.0"
  s.authors = "ericsteen"

  s.add_development_dependency "rails", '~> 5.0.0'
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.5"
  s.add_development_dependency "capybara"
  s.add_development_dependency "genspec"
end
