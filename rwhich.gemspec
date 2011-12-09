Gem::Specification.new do |s|
  s.name = "rwhich"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.authors = ["Edward Muller"]
  s.date = "2011-12-09"
  s.description = "Ruby Which"
  s.email = "edwardam@interlix.com"

  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README"
  ]

  s.files = [
    "Gemfile",
    "Rakefile",
    "rwhich.gemspec",
    "lib/rwhich.rb",
    "lib/rwhich/file.rb",
    "test/helper.rb",
    "test/test_rwhich.rb"
  ]

  s.homepage = "http://github.com/freeformz/rwhich"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Ruby Which"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.rc"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.1.rc"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.1.rc"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
